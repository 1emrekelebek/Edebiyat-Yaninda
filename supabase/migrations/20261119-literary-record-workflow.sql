-- Edebiyat Yanı Başında: kaynak bilgileri ve yayın inceleme akışı
-- Supabase SQL Editor'de bir kez çalıştırın. Mevcut kayıtlar yayımlanmış kalır;
-- yeni kayıtların varsayılan durumu taslaktır.

begin;

alter table public.literary_records
  add column if not exists status text not null default 'published',
  add column if not exists source_title text,
  add column if not exists source_author text,
  add column if not exists publisher text,
  add column if not exists edition_year integer,
  add column if not exists page_reference text,
  add column if not exists source_url text,
  add column if not exists location_note text;

-- Mevcut kayıtları koru; yeni satırlar taslak olarak başlasın.
update public.literary_records
set status = 'published'
where status is null or status not in ('draft', 'ready', 'published');

alter table public.literary_records
  alter column status set default 'draft';

alter table public.literary_records
  drop constraint if exists literary_records_status_check;

alter table public.literary_records
  add constraint literary_records_status_check
  check (status in ('draft', 'ready', 'published'));

create index if not exists literary_records_status_idx
  on public.literary_records (status);

-- Bu fonksiyon daha önce yönetici kontrolü için oluşturulmuş olmalı.
-- Anonim kullanıcılar için false döner; yöneticiler tüm kayıtları görebilir.
grant execute on function public.is_site_admin() to anon, authenticated;

-- Mevcut genel SELECT politikaları olsa bile taslakların dışarı sızmasını engelle.
-- Restrictive politika, var olan permissive SELECT politikasına ek olarak uygulanır.
drop policy if exists "literary_records_publish_gate" on public.literary_records;

create policy "literary_records_publish_gate"
  on public.literary_records
  as restrictive
  for select
  to anon, authenticated
  using (
    status = 'published'
    or (select public.is_site_admin())
  );

commit;
