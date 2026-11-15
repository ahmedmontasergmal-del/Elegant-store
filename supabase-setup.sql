-- شغّل هذا الملف في Supabase SQL Editor بعد إنشاء مستخدم Auth.
create table if not exists public.owner_profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  role text not null check (role in ('owner')),
  created_at timestamptz not null default now()
);
alter table public.owner_profiles enable row level security;
drop policy if exists "Owner can read own profile" on public.owner_profiles;
create policy "Owner can read own profile"
on public.owner_profiles for select
to authenticated
using (auth.uid() = id and role = 'owner');
-- بعد إنشاء مستخدم البريد owner@elegant-store.com من Authentication > Users:
insert into public.owner_profiles (id, role)
select id, 'owner' from auth.users
where email = 'owner@elegant-store.com'
on conflict (id) do update set role = excluded.role;
