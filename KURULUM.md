# Ev'im Kafe — Docker ile çalıştırma

Amaç: sitenin herkeste **birebir aynı** ortamda çalışması. Sen de arkadaşın da aynı
komutu verirsiniz, aynı sunucu (nginx) aynı ayarlarla açılır. "Bende çalışıyordu"
tartışması biter.

## Tek seferlik kurulum

1. [Docker Desktop](https://www.docker.com/products/docker-desktop/) indir, kur, aç.
2. Bu klasörde bir terminal aç (klasöre sağ tık → "Terminalde aç").

## Çalıştırma

```bash
docker compose up -d
```

Tarayıcıda: **http://localhost:8080**

Durdurmak için: `docker compose down`

## Düzenleme akışı

`index.html` konteynere **canlı bağlı** — dosyayı kaydet, tarayıcıda yenile, o kadar.
Yeniden başlatmak, imaj kurmak gerekmez.

## Arkadaşınla çalışma

Bu klasörü ona gönder (ya da bir git deposunda paylaşın). O da Docker Desktop kurup
aynı `docker compose up -d` komutunu verir — ikinizde de aynı şey çalışır.

Aynı ağdaysanız (aynı Wi-Fi), telefondan/onun bilgisayarından şu adresle de bakılır:
`http://SENIN-IP-ADRESIN:8080` (IP'ni `ipconfig` ile görebilirsin).

## Notlar

- Site tek dosya (`index.html`); `nginx.conf` sunucu ayarı, `compose.yaml` çalıştırma
  tarifi. `Dockerfile` sadece "imaj olarak paylaşmak istersen" diye duruyor, gerekmez.
- Telefon numarası (`+90 346 000 00 00`) hâlâ örnek — yayınlamadan önce değiştir.
