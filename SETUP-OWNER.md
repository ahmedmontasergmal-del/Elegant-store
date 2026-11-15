# إعداد دخول OWNER لمتجر ELEGANT

تمت إضافة صفحة الدخول على: `/owner.html`.

**مهم:** صفحة GitHub Pages وحدها لا تنشئ حسابات أو تخزن كلمات مرور بشكل آمن. صفحة الدخول تستخدم Supabase Auth، ولا تعمل فعليًا قبل إكمال الخطوات التالية:

1. أنشئ مشروعًا مجانيًا في Supabase.
2. من Authentication > Users أنشئ مستخدمًا بالبريد `owner@elegant-store.com` وضع كلمة المرور التي تختارها بنفسك. لا ترسل كلمة المرور في المحادثة.
3. افتح SQL Editor وشغّل محتوى الملف `supabase-setup.sql`.
4. من Project Settings > API انسخ Project URL و anon/public key فقط.
5. ضع القيمتين في `supabase-config.js` مكان `YOUR_SUPABASE_PROJECT_URL` و `YOUR_SUPABASE_ANON_KEY`.
6. احفظ التعديلات في GitHub وانتظر انتهاء Actions، ثم افتح `https://ahmedmontasergmal-del.github.io/Elegant-store/owner.html`.

اسم المستخدم الظاهر هو `OWNER`. داخليًا تستخدم صفحة الدخول البريد الثابت أعلاه لأن Supabase Password Auth يعتمد البريد وكلمة المرور. لا تضع أبدًا service_role key أو كلمة المرور في ملفات الموقع.

**الحالة الحالية:** واجهة الدخول وطبقة التحقق جاهزتان كملفات، لكن لن يتم قبول تسجيل الدخول قبل ربط مشروع Supabase وإنشاء مستخدم OWNER وتشغيل SQL. هذه صفحة دخول فقط وليست لوحة إدارة منتجات أو طلبات حتى الآن.
