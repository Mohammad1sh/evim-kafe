# Ev'im Kafe — çalıştırma

Amaç: sitenin herkeste **birebir aynı** ortamda çalışması. Aynı komut, aynı sunucu
(nginx), aynı ayarlar — "bende çalışıyordu" tartışması biter.

## Tek seferlik kurulum

1. [Docker Desktop](https://www.docker.com/products/docker-desktop/) indir, kur, aç.
2. Bu klasörde bir terminal aç (klasöre sağ tık → "Terminalde aç").

## Çalıştırma

```bash
docker compose up -d
```

Tarayıcıda: **http://127.0.0.1:8080** (bazı makinelerde `localhost` çalışmayabiliyor,
127.0.0.1 kullan). Durdurmak için: `docker compose down`

## Dosyalar

- `index.html` — sitenin tamamı (tek dosya). Konteynere **canlı bağlı**: kaydet,
  tarayıcıda yenile, o kadar.
- `admin.html` — menü/fiyat yönetim paneli (`/admin.html`). Menü verisi Supabase'te
  durur; panelden yapılan değişiklik siteye anında yansır, deploy gerekmez.
  Giriş yalnızca yetkili e-postayla yapılabilir.
- `nginx.conf` — sunucu + güvenlik başlıkları. Bunu değiştirirsen:
  `docker compose up -d --force-recreate`

## Birlikte çalışma

Kod GitHub'da: `github.com/Mohammad1sh/evim-kafe`. Depoyu klonla, değişiklik yap,
push'la. Yayın GitHub Pages üzerinden otomatik güncellenir.

```bash
git clone https://github.com/Mohammad1sh/evim-kafe.git
```
