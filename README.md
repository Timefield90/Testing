# Tesmill Shuttle - Android App Build Guide

## Cara Build APK

### Opsi 1: Build APK dari Project Android (Direkomendasikan)

#### Prerequisites
1. Install Android Studio dari https://developer.android.com/studio
2. Install Java JDK 17 atau lebih baru

#### Langkah Build
1. Buka Android Studio
2. Pilih **Open** dan arahkan ke folder `android-app/`
3. Tunggu Gradle sync selesai
4. Pilih menu **Build > Build Bundle(s) / APK(s) > Build APK(s)**
5. APK akan tersimpan di: `app/build/outputs/apk/debug/app-debug.apk`

#### Generate Release APK (Signed)
1. Pilih menu **Build > Generate Signed Bundle / APK**
2. Pilih **APK**
3. Buat atau pilih keystore
4. Pilih `release` build type
5. APK release tersimpan di: `app/build/outputs/apk/release/app-release.apk`

---

### Opsi 2: PWA Install (Tanpa APK)

Website ini sudah dilengkapi PWA (Progressive Web App). 

**Cara install di Android:**
1. Buka browser Chrome di HP Android
2. Akses URL website Tesmill Shuttle (host online)
3. Klik menu Chrome (⋮) 
4. Pilih **"Tambahkan ke layar utama"** atau **"Install app"**
5. Aplikasi akan muncul di home screen seperti APK

---

### Opsi 3: Online APK Builder

Gunakan layanan online untuk convert PWA ke APK:
- **PWABuilder** (https://www.pwabuilder.com)
- **Bubblewrap** (CLI tool dari Google)

**Cara dengan PWABuilder:**
1. Buka https://www.pwabuilder.com
2. Masukkan URL website
3. Klik **"Start"**
4. Pilih **"Android"** package
5. Download APK yang sudah jadi

---

## Struktur Project

```
android-app/
├── app/
│   ├── src/main/
│   │   ├── AndroidManifest.xml
│   │   ├── java/com/tesmill/shuttle/
│   │   │   └── MainActivity.java
│   │   ├── res/
│   │   │   ├── layout/activity_main.xml
│   │   │   ├── values/
│   │   │   │   ├── strings.xml
│   │   │   │   └── themes.xml
│   │   │   └── mipmap-xxxhdpi/ (icons)
│   │   └── assets/www/ (copy semua file web)
│   └── build.gradle
├── build.gradle
├── settings.gradle
└── README.md
```

## Fitur APK

- ✅ Fullscreen WebView
- ✅ JavaScript enabled
- ✅ Local storage & cache
- ✅ Back button navigation
- ✅ Splash screen otomatis
- ✅ Support offline (dengan Service Worker)

## Catatan Penting

- Sebelum build, copy semua file web ke `app/src/main/assets/www/`
- Pastikan file `index.html` berada di dalam folder `www/`
- Untuk menggunakan URL online, ubah `loadUrl()` di `MainActivity.java`
