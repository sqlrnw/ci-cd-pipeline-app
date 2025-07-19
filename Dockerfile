# استخدم نسخة رسمية من Node.js
FROM node:18

# حدد مجلد العمل داخل الحاوية
WORKDIR /app

# انسخ ملفات التطبيق
COPY app/package*.json ./

# ثبّت dependencies
RUN npm install

# انسخ باقي الملفات
COPY app .

# شغّل التطبيق
CMD ["node", "index.js"]

# افتح البورت
EXPOSE 3000

