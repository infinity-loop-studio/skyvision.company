/*
 Navicat Premium Data Transfer

 Source Server         : localhost (postgresql)
 Source Server Type    : PostgreSQL
 Source Server Version : 120001
 Source Host           : localhost:5432
 Source Catalog        : skyvision.company
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 120001
 File Encoding         : 65001

 Date: 23/02/2020 13:15:42
*/


-- ----------------------------
-- Sequence structure for archive_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."archive_id_seq";
CREATE SEQUENCE "public"."archive_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for customhtml_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."customhtml_id_seq";
CREATE SEQUENCE "public"."customhtml_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for customjs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."customjs_id_seq";
CREATE SEQUENCE "public"."customjs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for languages_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."languages_id_seq";
CREATE SEQUENCE "public"."languages_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."menu_id_seq";
CREATE SEQUENCE "public"."menu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for menuitems_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."menuitems_id_seq";
CREATE SEQUENCE "public"."menuitems_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for modules_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."modules_id_seq";
CREATE SEQUENCE "public"."modules_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for modulestable_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."modulestable_id_seq";
CREATE SEQUENCE "public"."modulestable_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for slides_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."slides_id_seq";
CREATE SEQUENCE "public"."slides_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_id_seq";
CREATE SEQUENCE "public"."users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for archive
-- ----------------------------
DROP TABLE IF EXISTS "public"."archive";
CREATE TABLE "public"."archive" (
  "id" int4 NOT NULL DEFAULT nextval('archive_id_seq'::regclass),
  "createdAt" int8,
  "fromModel" text COLLATE "pg_catalog"."default",
  "originalRecord" json,
  "originalRecordId" json
)
;

-- ----------------------------
-- Records of archive
-- ----------------------------

-- ----------------------------
-- Table structure for customhtml
-- ----------------------------
DROP TABLE IF EXISTS "public"."customhtml";
CREATE TABLE "public"."customhtml" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL DEFAULT nextval('customhtml_id_seq'::regclass),
  "data" text COLLATE "pg_catalog"."default",
  "moduleId" float4
)
;

-- ----------------------------
-- Records of customhtml
-- ----------------------------
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 1, '<div id="homepage-services-section" class="uk-margin-remove uk-position-relative uk-background-default">
  <h1 class="uk-text-center">Услуги</h1>
  <p class="uk-text-center">Весь ассортимент нашей компании</p>
  <div uk-grid="" class="uk-child-width-1-3@l uk-child-width-1-1@s uk-child-width-1-2@m uk-grid uk-padding uk-grid">
    <div class="uk-first-column">
      <div class="uk-card">
        <div class="uk-card-media-top">
          <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
            <img class="border-c" src="/images/mainpage/services/television.jpg" alt="">
            <div class="uk-transition-slide-left uk-position-cover uk-overlay custom-overlay-1 uk-flex uk-flex-center uk-flex-middle uk-width-1-1@l">
              <p class="uk-h4 uk-margin-remove">
                <button class="uk-button uk-button-danger">Заказать</button>
              </p>
            </div>
          </div>
        </div>
        <div class="uk-card-body ukcardf">
          <h3 class="uk-card-title">Телевидение</h3>
          <p>Установка спутникового, эфирного и IPTV телевидения.</p>
          <a href="/ru/телевидение" class="uk-button uk-button-secondary">Перейти в раздел</a>
        </div>
      </div>
    </div>
    <div>
      <div class="uk-card">
        <div class="uk-card-media-top">
          <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
            <img class="border-c" src="/images/mainpage/services/internet.jpg" alt="">
            <div class="uk-transition-slide-left uk-position-cover uk-overlay custom-overlay-1 uk-flex uk-flex-center uk-flex-middle uk-width-1-1@l">
              <p class="uk-h4 uk-margin-remove">
                <button class="uk-button uk-button-danger">Заказать</button>
              </p>
            </div>
          </div>
        </div>
        <div class="uk-card-body">
          <h3 class="uk-card-title">Интерент</h3>
          <p>Установка качественного спутникового интернета под ключ.</p>
          <a href="/ru/интернет" class="uk-button uk-button-secondary">Перейти в раздел</a>
        </div>
      </div>
    </div>
    <div>
      <div class="uk-card">
        <div class="uk-card-media-top">
          <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
            <img class="border-c" src="/images/mainpage/services/monitoring.jpg" alt="">
            <div class="uk-transition-slide-left uk-position-cover uk-overlay custom-overlay-1 uk-flex uk-flex-center uk-flex-middle uk-width-1-1@l">
              <p class="uk-h4 uk-margin-remove">
                <button class="uk-button uk-button-danger">Заказать</button>
              </p>
            </div>
          </div>
        </div>
        <div class="uk-card-body">
          <h3 class="uk-card-title">Видео наблюдение</h3>
          <p>Монтаж и настройка систем видео наблюдения.</p>
          <a href="/ru/видеонаблюдение" class="uk-button uk-button-secondary">Перейти в раздел</a>
        </div>
      </div>
    </div>
    <div class="uk-grid-margin uk-first-column">
      <div class="uk-card">
        <div class="uk-card-media-top">
          <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
            <img class="border-c" src="/images/mainpage/services/intercom.jpg" alt="">
            <div class="uk-transition-slide-left uk-position-cover uk-overlay custom-overlay-1 uk-flex uk-flex-center uk-flex-middle uk-width-1-1@l">
              <p class="uk-h4 uk-margin-remove">
                <button class="uk-button uk-button-danger">Заказать</button>
              </p>
            </div>
          </div>
        </div>
        <div class="uk-card-body">
          <h3 class="uk-card-title">Домофонные системы</h3>
          <p>Установка домофонной системы, дома и на предриятии.</p>
          <a href="/ru/домофонные-системы" class="uk-button uk-button-secondary">Перейти в раздел</a>
        </div>
      </div>
    </div>
    <div class="uk-grid-margin">
      <div class="uk-card">
        <div class="uk-card-media-top">
          <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
            <img class="border-c" src="/images/mainpage/services/amplifier.jpg" alt="">
            <div class="uk-transition-slide-left uk-position-cover uk-overlay custom-overlay-1 uk-flex uk-flex-center uk-flex-middle uk-width-1-1@l">
              <p class="uk-h4 uk-margin-remove">
                <button class="uk-button uk-button-danger">Заказать</button>
              </p>
            </div>
          </div>
        </div>
        <div class="uk-card-body">
          <h3 class="uk-card-title">Усиление 3G, 4G и GSM</h3>
          <p>Усиление сигнала мобильного опреатора.</p>
          <a href="/ru/усиление-3g-4g-и-gsm-сигнала-операторов-мобильной-связи-kyivstar-life-cell-и-vodafone" class="uk-button uk-button-secondary">Перейти в раздел</a>
        </div>
      </div>
    </div>
    <div class="uk-grid-margin">
      <div class="uk-card">
        <div class="uk-card-media-top">
          <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
            <img class="border-c" src="/images/mainpage/services/pc.jpg" alt="">
            <div class="uk-transition-slide-left uk-position-cover uk-overlay custom-overlay-1 uk-flex uk-flex-center uk-flex-middle uk-width-1-1@l">
              <p class="uk-h4 uk-margin-remove">
                <button class="uk-button uk-button-danger">Заказать</button>
              </p>
            </div>
          </div>
        </div>
        <div class="uk-card-body">
          <h3 class="uk-card-title">Обслуживание ПК</h3>
          <p>Настройка и обслуживание любой компьютерной техники.</p>
          <a href="/ru/корпоративное-компьютерное-обслуживание" class="uk-button uk-button-secondary">Перейти в раздел</a>
        </div>
      </div>
    </div>
  </div>
</div>', 5);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 2, '<div id="homepage-article-section" class="uk-light uk-child-width-1-2@l uk-child-width-1-1@s uk-grid-match uk-grid-column-collapse uk-position-relative uk-background-default uk-grid" uk-grid="">
  <div class="background-primary uk-padding-large uk-height-large uk-first-column">
    <p class="uk-text-lead">
      Вся подробная информация о том как происходит подключение к спутниковому телевидению.
    </p>
    <p>
      <a href="/ru/подключение-и-настройка-спутникового-телевидения" class="uk-button uk-button-default">Подробнее</a>
    </p>
  </div>
  <div class="image-television">
  </div>
  <div class="image-internet uk-margin-remove uk-grid-margin uk-first-column">
  </div>
  <div class="background-primary uk-padding-large uk-height-large uk-margin-remove uk-grid-margin">
    <p class="uk-text-lead">
      Вся подробная информация о том что нужно знать при подключении спутникового интернета.
    </p>
    <p>
      <a href="/ru/подключение-и-настройка-спутникового-интернета" class="uk-button uk-button-default">Подробнее</a>
    </p>
  </div>
  <div class="background-primary uk-padding-large uk-height-large uk-margin-remove uk-grid-margin uk-first-column">
    <p class="uk-text-lead">
      Монтаж и настройка систем видеонаблюдения во всех подробностях.
    </p>
    <p>
      <a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения" class="uk-button uk-button-default">Подробнее</a>
    </p>
  </div>
  <div class="image-monitoring uk-margin-remove uk-grid-margin">
  </div>
</div>', 6);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 3, '<div id="homepage-quick-order-section" class="uk-margin-remove uk-position-relative uk-background-default uk-visible@l">
  <div class="uk-padding">
    <div class="uk-container uk-container-expand">
      <div uk-grid="" class="uk-grid">
        <div class="uk-width-1-2@l uk-first-column">
          <img src="/images/mainpage/quick_order/image_1.webp">
        </div>
        <div class="uk-width-1-2@l">
          <h1>
            Быстро<br>
            заказать услугу
          </h1>
          <p>
            Этот раздел позволяет быстро и удобно выбрать услуги которые мы предоставляем. Вы можете
            отметить интересующие вас услуги и указать свой номер телефона и мы
            вам перезвоним в удобное для вас время для более подробной консультации.
          </p>
          <form>
            <div class="uk-margin uk-grid-small uk-child-width-auto uk-grid">
              <label><input class="uk-checkbox" type="checkbox"> Телевидение</label>
              <label><input class="uk-checkbox" type="checkbox"> Интернет</label>
              <label><input class="uk-checkbox" type="checkbox"> Видеонаблюдение</label>
              <label><input class="uk-checkbox" type="checkbox"> Дополнительные услуги</label>
            </div>
            <div>
              <div uk-grid="" class="uk-grid-collapse uk-grid">
                <div class="uk-width-2-3@l uk-first-column">
                  <input class="uk-input" type="text" placeholder="Введите свой номер телефона">
                </div>
                <div class="uk-width-1-3@l">
                  <button class="uk-button uk-button-danger">Отправить</button>
                </div>
              </div>
            </div>

          </form>
        </div>
      </div>
    </div>
  </div>
</div>', 7);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 4, '<div id="homepage-about-us-section" uk-grid="" class="uk-grid uk-grid-stack uk-light uk-visible@l">
    <div class="uk-width-1-1@l uk-padding uk-first-column">
        <h1>Наша цель</h1>
        <p>Доступные цены и высокое качество</p>
        <p>Главным критерием хорошей и качествнной работы на наш взгляд, это любовь к собственному делу. Будучи
            энтузиастами и профессионалами своего дела мы предоставляем
            нашим клиентам, максимальный уровень качества и обслуживания.</p>
    </div>
</div>', 8);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 5, '<div id="homepage-send-review-section" class="uk-margin-remove uk-position-relative uk-background-default">
  <div uk-grid="" class="uk-child-width-1-3@l uk-child-width-1-1@s uk-padding uk-grid">
    <div class="uk-first-column">
      <img src="/images/mainpage/review/image_1.webp">
    </div>
    <div class="uk-width-2-3@l">
      <h1>
        Оставить отзыв
      </h1>
      <p>Мы всегда рады стороннему мнению и конструктивной критике. В этой форме вы всегда можете опубликовать ваш
        комментарий.</p>
      <form>
        <div class="uk-margin">
          <textarea class="uk-textarea" rows="3" placeholder="Введите своё сообщение"></textarea>
        </div>
        <button class="uk-button uk-button-secondary">Отправить</button>
      </form>
    </div>
  </div>
</div>', 9);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 6, '<div id="homepage-reviews-container-section" uk-grid="" class="uk-grid uk-grid-stack uk-grid-small">
  <div class="uk-width-1-1@l uk-first-column">
    <div uk-slideshow="animation: slide; autoplay: false; autoplay-interval: 5000" class="uk-slideshow">
      <div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1">
        <ul class="uk-slideshow-items" style="min-height: 651.375px;">
          <li tabindex="-1" class="uk-active uk-transition-active" style="transform: translate3d(0px, 0px, 0px);">
            <div class="uk-position-center uk-position-small uk-text-center uk-light"><h2 class="uk-margin-remove">Щербаков Станислав</h2>
              <p class="uk-margin-remove">Очень важно было поставить две камеры на предприятии для обзора термодатчиков холодильников. Очень быстро и качественно выполнили подключение и
                настроили
                нам мобильники в течении дня.</p></div>
          </li>
          <li tabindex="-1">
            <div class="uk-position-center uk-position-small uk-text-center uk-light"><h2 class="uk-margin-remove">Center</h2>
              <p class="uk-margin-remove">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p></div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>', 10);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 50, ' ', 54);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 51, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Контакты</h1>
    
    
    
    
  </div>
</div>', 55);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 52, ' ', 56);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 7, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Телевидение</h1>
    <p class="header-separator uk-margin-remove">Подключение и настройка: </p>
    <p class="uk-margin-remove-top uk-margin-remove-bottom text-white uk-text-meta">
      <a href="/ru/подключение-и-настройка-спутникового-телевидения">Спутникового телевидения</a>
      <span class="header-separator direct-slash-separator"> | </span>
      <a href="/ru/подключение-и-настройка-цифрового-эфирного-телевидения-т2">Цифрового эфирного телевидения (Т2)</a>
      <span class="header-separator direct-slash-separator"> | </span>
      <a href="/ru/подключение-и-настройка-интернет-телевидения-iptv-ott">Интернет телевидения (IPTV, OTT)</a>
      <span class="header-separator direct-slash-separator"> | </span>
      <a href="/ru/подключение-и-настройка-viasat">Viasat</a>
      <span class="header-separator direct-slash-separator"> | </span>
      <a href="/ru/подключение-и-настройка-extra-tv">Extra TV</a>
    </p>
    <p class="header-separator uk-margin-remove-bottom">Дополнительные услуги: </p>
    <p class="uk-margin-remove-top uk-margin-remove-bottom text-white uk-text-meta">
      <a href="/ru/модернизация-настройка-и-ремонт-спутниковой-антены">Модернизация,настройка и ремонт спутниковой антены</a>
      <span class="header-separator direct-slash-separator"> | </span>
      <a href="/ru/ремонт-настройка-и-прошивка-спутниковых-тюнеров-ресиверов">Ремонт, настройка и прошивка спутниковых тюнеров (ресиверов)</a>
      <span class="header-separator direct-slash-separator"> | </span>
      <a href="/ru/модернизация-настройка-и-ремонт-оборудования-для-цифрового-эфирного-телевидения-т2">Модернизация, настройка и ремонт оборудования для цифрового эфирного телевидения (Т2)</a>
      <span class="header-separator direct-slash-separator"> | </span>
      <a href="/ru/megogo">Megogo</a>
      <span class="header-separator direct-slash-separator"> | </span>
      <a href="/ru/oll-tv">OLL TV</a>
      <span class="header-separator direct-slash-separator"> | </span>
      <a href="/ru/divan-tv">Divan TV</a>
      <span class="header-separator direct-slash-separator"> | </span>
      <a href="/ru/демонтаж-спутниковой-антены">Демонтаж спутниковой антены</a>
    </p>
  </div>
</div>
', 11);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 8, '<img src="/images/television/articles/article-1.webp">
<h2 class="uk-margin-small-top">Подключение и настройка спутникового телевидения</h2>
<p>
  Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения систем массового участия.
  Значимость этих проблем настолько очевидна, что консультация с широким активом требуют определения и уточнения форм развития.
</p>
<a href="/ru/подключение-и-настройка-спутникового-телевидения" class="uk-button uk-button-secondary">Читать материал</a>
<hr class="uk-divider-icon">

<img src="/images/no-image.jpg">
<h2 class="uk-margin-small-top">Подключение и настройка цифрового эфирного телевидения (Т2)</h2>
<p>
  Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения систем массового участия.
  Значимость этих проблем настолько очевидна, что консультация с широким активом требуют определения и уточнения форм развития.
</p>
<a href="/ru/подключение-и-настройка-цифрового-эфирного-телевидения-т2" class="uk-button uk-button-secondary">Читать материал</a>
<hr class="uk-divider-icon">

<img src="/images/no-image.jpg">
<h2 class="uk-margin-small-top">Подключение и настройка интернет телевидения (IPTV, OTT)</h2>
<p>
  Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения систем массового участия.
  Значимость этих проблем настолько очевидна, что консультация с широким активом требуют определения и уточнения форм развития.
</p>
<a href="/ru/подключение-и-настройка-интернет-телевидения-iptv-ott" class="uk-button uk-button-secondary">Читать материал</a>
<hr class="uk-divider-icon">

<img src="/images/no-image.jpg">
<h2 class="uk-margin-small-top">Подключение и настройка Viasat</h2>
<p>
  Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения систем массового участия.
  Значимость этих проблем настолько очевидна, что консультация с широким активом требуют определения и уточнения форм развития.
</p>
<a href="/ru/подключение-и-настройка-viasat" class="uk-button uk-button-secondary">Читать материал</a>
<hr class="uk-divider-icon">

<img src="/images/no-image.jpg">
<h2 class="uk-margin-small-top">Подключение и настройка Extra TV</h2>
<p>
  Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения систем массового участия.
  Значимость этих проблем настолько очевидна, что консультация с широким активом требуют определения и уточнения форм развития.
</p>
<a href="/ru/подключение-и-настройка-extra-tv" class="uk-button uk-button-secondary">Читать материал</a>
<hr class="uk-divider-icon">

<img src="/images/no-image.jpg">
<h2 class="uk-margin-small-top">Дополнительные услуги</h2>
<p>
  Список дополнительных услуг
</p>
', 12);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 9, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Подключение и настройка<br>
спутникового телевидения</h1>
    
    
    
    
  </div>
</div>', 13);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 10, '<div class="uk-text-bold uk-alert-danger" uk-alert>
    <p>В данном подключении закодированны все основные украинские телеканалы : <a href="#coded_channels" uk-scroll>смотреть список</a></p>
</div>
<h2>Цены на комплекты без абонплаты</h2>
<div class="uk-overflow-auto">
    <table class="uk-table uk-table-divider uk-table-hover uk-table-middle">
        <thead>
        <tr>
            <th>Комплект на</th>
            <th class="uk-width-small">Цена</th>
            <th class="uk-table-shrink uk-text-nowrap"></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1 ТВ</td>
            <td class="uk-text-truncate">2300 грн.</td>
        </tr>
        <tr>
            <td>2 ТВ</td>
            <td class="uk-text-truncate">3300 грн.</td>
        </tr>
        <tr>
            <td>3 ТВ</td>
            <td class="uk-text-truncate">4300 грн.</td>
        </tr>
        <tr>
            <td>4 ТВ</td>
            <td class="uk-text-truncate">5300 грн.</td>
        </tr>
        <tr>
            <td>5 ТВ</td>
            <td class="uk-text-truncate">6300 грн.</td>
        </tr>
        <tr>
            <td>6 ТВ</td>
            <td class="uk-text-truncate">7300 грн.</td>
        </tr>
        <tr>
            <td>7 ТВ</td>
            <td class="uk-text-truncate">8300 грн.</td>
        </tr>
        <tr>
            <td>8 ТВ</td>
            <td class="uk-text-truncate">9300 грн.</td>
        </tr>
        </tbody>
    </table>
    <p class="uk-margin-remove uk-text-meta">* Мы работаем с отелями, ресторанами и прочими заведениями где есть потребность в установке более восьми телевизоров.</p>
</div>
<h2>Что входит в указанную стоимость</h2>
<dl class="uk-description-list uk-description-list-divider"><dt>Выезд мастера</dt>
    <dd>После того как вы согласуете все детали вашего подключения по телефону, наш мастер выедет к вам на объект.</dd><dt>Оборудование</dt>
    <dd>К примеру вы выбрали комплект №4 на четыре телевизора за 5300 грн. В эту сумму будут включены четыре тюнера, параболическая антена, три конвертора на четыре телевизора каждый и 40 метров по 10 метров на каждый телевизор.</dd><dt>Монтаж и настройка</dt>
    <dd>Собрав всю необходимую информацию о подключении, наш мастер, со всем необходимым оборудованием для подключения спутникового телевидения, приедет к вам на объект, осуществит монтаж спутниковой антены и отведёт нужное количество кабеля до каждого телевизора, после чего будет произведена настройка ресиверов.</dd>
</dl>
<h2>Дополнительная информация</h2>
<h3 class="red-color uk-text-bold uk-text-uppercase" id="coded_channels">Список закодированных каналов</h3>
<p>1+1 Media («1+1», «2+2», «ТЕТ», «ПлюсПлюс», «Бігуді», «УНІАН ТБ»).</p>
<p>Медиа Группа Украина (ТРК Украина, НЛО ТВ, Индиго, Эскулап ТВ).</p>
<p>StarLightMedia (СТБ, ICTV, Новий канал, М1, М2, ОЦЕ).</p>
<p>Inter Media Group (Интер, НТН, К1, К2, Мега, Пиксель, Zoom, Enter-фильм).</p>
<p class="uk-margin-remove uk-text-meta">* <span class="red-color">Данные каналы будут платными только в сегменте спутниковго телевидения</span>. В сегменте цифрового эфирного телевидения эти каналы доступны бесплатно.</p>
<h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения всех каналов без абонентской платы</h3>
<ul class="uk-list">
    <a href="/ru/подключение-и-настройка-цифрового-эфирного-телевидения-т2">
        <li><i class="fa-external-link-alt fas"></i> Подключение и настройка цифрового эфирного телевидения (DVB-T2)</li>
    </a>
    <a href="/ru/подключение-и-настройка-комбинированного-спутникового-и-эфирного-т2-телевидения">
        <li class="uk-padding-remove-left uk-padding-small uk-padding-remove-bottom"><i class="fa-external-link-alt fas"></i> Подключение и настройка комбинированного (спутникового и эфирного DVB-T2) телевидения</li>
    </a>
</ul>
<h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения всех каналов c абонентской платой</h3>
<ul class="uk-list">
    <a href="/ru/подключение-и-настройка-viasat">
        <li><i class="fa-external-link-alt fas"></i> Подключение и настройка Viasat</li>
    </a>
    <a href="/ru/лючение-и-настройка-extra-tv">
        <li class="uk-padding-remove-left uk-padding-small"><i class="fa-external-link-alt fas"></i> Подключение и настройка Extra TV</li>
    </a>
    <a href="/ru/подключение-и-настройка-интернет-телевидения-iptv-ott">
        <li><i class="fa-external-link-alt fas"></i>Подключение и настройка интернет телевидения (IPTV, OTT)</li>
    </a>
</ul>', 14);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 11, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Подключение и настройка<br>
цифрового эфирного телевидения (Т2)</h1>
    
    
    
    
  </div>
</div>', 15);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 12, '<h2>Цены</h2><h3 class="red-color uk-text-bold uk-text-uppercase">Комплект на 1ТВ (Пассивная антена + тюнер)</h3><div class="uk-grid-small" uk-grid>  <div class="uk-width-expand" uk-leader><i class="fas fa-broadcast-tower"></i></div>  <div class="uk-width-1-5" uk-leader><i class="fas fa-tv"></i></div>  <div class="uk-width-1-4">Цена: 1650 - 1900 грн.</i></div></div><p class="uk-text-meta uk-margin-small-top">* В данной комплектации используется пассивная антена для одного телевизора. Растояние между вышкой и антеной должно быть <span  class="red-color uk-text-bold">не больше  20  км</span>. В комплекте идёт 10 метров коаксиального кабеля. Это самое бюджетное решение для одного телевизора.</p><h3 class="red-color uk-text-bold uk-text-uppercase">Комплект на 1ТВ (антена с усилителем + тюнер)</h3><div class="uk-grid-small" uk-grid>  <div class="uk-width-expand" uk-leader><i class="fas fa-broadcast-tower red-color"></i></div>  <div class="uk-width-1-5" uk-leader><i class="fas fa-tv"></i></div>  <div class="uk-width-1-4">Цена: 1750 - 2000 грн.</i></div></div><p class="uk-text-meta uk-margin-small-top">* В данной комплектации используется антена с усилителем для одного телевизора. Растояние между вышкой и антеной должно быть <span  class="red-color uk-text-bold">не  больше  40 км</span>. В комплекте идёт 10 метров коаксиального кабеля.</p><h3 class="red-color uk-text-bold uk-text-uppercase">Комплект на 1ТВ(пассивная антена + внешний усилитель)</h3><div class="uk-grid-small" uk-grid>  <div class="uk-width-expand" uk-leader><i class="fas fa-broadcast-tower"></i> + <span class="red-color">УСИЛИТЕЛЬ</span></div>  <div class="uk-width-1-5" uk-leader><i class="fas fa-tv"></i></div>  <div class="uk-width-1-4">Цена: 2150 - 2400 грн.</i></div></div><p class="uk-text-meta uk-margin-small-top">* В данной комплектации используется пасивная антена с внешним усилителем для одного телевизора. Растояние между вышкой и антеной должно  быть <span class="red-color uk-text-bold">не больше 80 км</span>. В комплекте идёт 10 метров коаксиального кабеля.</p><table class="uk-table uk-table-hover uk-table-middle uk-table-divider">  <thead>  <tr>    <th>Комплект на</th>    <th class="uk-width-small">Цена</th>    <th class="uk-table-shrink uk-text-nowrap"></th>  </tr>  </thead>  <tbody>  <tr>    <td>2 ТВ</td>    <td class="uk-text-truncate">2800 - 3200 грн.</td>  </tr>  <tr>    <td>3 ТВ</td>    <td class="uk-text-truncate">3700 - 4100 грн.</td>  </tr>  <tr>    <td>4 ТВ</td>    <td class="uk-text-truncate">4500 - 4900 грн.</td>  </tr>  <tr>    <td>5 ТВ</td>    <td class="uk-text-truncate">5300 - 5700 грн.</td>  </tr>  </tbody></table><hr class="uk-divider-icon"><h2>Что входит в указанную стоимость</h2><dl class="uk-description-list uk-description-list-divider">  <dt>Выезд мастера</dt>  <dd>После того как вы согласуете все детали вашего подключения по телефону, наш мастер выедет к вам на объект.</dd>  <dt>Оборудование</dt>  <dd>Комплектация зависит от : 1. Растояния между вышкой и местом монтажа антены, высоты на которой будет размещена антена, окружающей среды и наличия других радио устройств.    Комплект по самой низкой цене является опциональным и применяется в тех местах где уселение не нужно и качество сигнала высокое. В большинстве случаев используется комплектация с усилителем    сигнала.  </dd>  <dt>Монтаж и настройка</dt>  <dd>Собрав всю необходимую информацию о подключении, наш мастер, со всем необходимым оборудованием для подключения эфирного (DVB-T2) телевидения, приедет к вам на объект. После    чего он осуществит монтаж антены и её настройку. Далее монтажник отведёт нужное количество кабеля до места размещения телевизора. Окончательным этапом является подключение    тюнера и его настройка.  </dd></dl><hr class="uk-divider-icon"><h2>Дополнительная информация</h2><h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения без абонентской платы</h3><ul class="uk-list">  <a href="/ru/подключение-и-настройка-спутникового-телевидения">    <li><i class="fas fa-external-link-alt"></i> Подключение и настройка спутникового телевидения    </li>  </a>  <p class="uk-text-meta uk-margin-remove">* В данном подключении с 20.01.2020 г. не будет основных украинских каналов</p>  <a href="/ru/подключение-и-настройка-комбинированного-спутникового-и-эфирного-т2-телевидения">    <li class="uk-padding-small uk-padding-remove-left uk-padding-remove-bottom"><i class="fas fa-external-link-alt"></i> Подключение и настройка комбинированного (спутникового и      эфирного DVB-T2) телевидения    </li>  </a><span class="red-color">(В классическом DVB-T2 подключении идёт 32 канала в комбинированном идёт 100 каналов)</span></ul><h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения всех каналов c абонентской платой</h3><ul class="uk-list">  <a href="/ru/подключение-и-настройка-viasat">    <li><i class="fas fa-external-link-alt"></i> Подключение и настройка Viasat</li>  </a>  <a href="/ru/лючение-и-настройка-extra-tv">    <li class="uk-padding-small uk-padding-remove-left"><i class="fas fa-external-link-alt"></i> Подключение и настройка Extra TV</li>  </a>  <a href="/ru/подключение-и-настройка-интернет-телевидения-iptv-ott">    <li><i class="fas fa-external-link-alt"></i>Подключение и настройка интернет телевидения (IPTV, OTT)</li>  </a></ul>', 16);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 13, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Подключение и настройка<br>
интернет телевидения (IPTV, OTT)</h1>
    
    
    
    
  </div>
</div>', 17);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 15, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Подключение и настройка<br>
Viasat</h1>
    
    
    
    
  </div>
</div>', 19);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 16, '<h2>Цены</h2>
<div class="uk-overflow-auto">
    <table class="uk-table uk-table-hover uk-table-middle uk-table-divider">
        <thead>
        <tr>
            <th>Комплект на</th>
            <th class="uk-width-small">Цена</th>
            <th class="uk-table-shrink uk-text-nowrap"></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1 ТВ</td>
            <td class="uk-text-truncate">3000 грн.</td>
        </tr>
        <tr>
            <td>2 ТВ</td>
            <td class="uk-text-truncate">4700 грн.</td>
        </tr>
        <tr>
            <td>3 ТВ</td>
            <td class="uk-text-truncate">6400 грн.</td>
        </tr>
        <tr>
            <td>4 ТВ</td>
            <td class="uk-text-truncate">8100 грн.</td>
        </tr>
        <tr>
            <td>5 ТВ</td>
            <td class="uk-text-truncate">9800 грн.</td>
        </tr>
        <tr>
            <td>6 ТВ</td>
            <td class="uk-text-truncate">11500 грн.</td>
        </tr>
        <tr>
            <td>7 ТВ</td>
            <td class="uk-text-truncate">13200 грн.</td>
        </tr>
        <tr>
            <td>8 ТВ</td>
            <td class="uk-text-truncate">14900 грн.</td>
        </tr>
        </tbody>
    </table>
    <p class="uk-text-meta uk-margin-remove">* Мы работаем с отелями, ресторанами и прочими заведениями где есть потребность в установке более восьми телевизоров.</p></div>

<dl class="uk-description-list-divider">
    <dt><h2>Тарифные планы</h2></dt>
    <div class="plans">
        <dd class="uk-margin-small-top">
            <i class="fas fa-list"></i> Тарифный план: Национальный <span class="red-color">|</span> Цена: 89 грн./мес
        </dd>
        <dd class="uk-margin-small-top">
            <i class="fas fa-list"></i> Тарифный план: Семейный <span class="red-color">|</span> Цена: 109 грн./мес
        </dd>
        <dd class="uk-margin-small-top">
            <i class="fas fa-list"></i> Тарифный план: Престижный <span class="red-color">|</span> Цена: 149 грн./мес
        </dd>
        <dd class="uk-margin-small-top">
            <i class="fas fa-list"></i> Тарифный план: Престижный HD <span class="red-color">|</span> Цена: 249 грн./мес
        </dd>
        <dd class="uk-margin-small-top">
            <i class="fas fa-list"></i> Тарифный план: Премиум HD <span class="red-color">|</span> Цена: 299 грн./мес
        </dd>
    </div>
</dl>
<dl class="uk-description-list uk-description-list-divider channel-list">
    <ul uk-accordion="" class="uk-accordion">
        <li>
            <a class="uk-accordion-title" href="#">
                <dt>
                    <i class="fas fa-tv"></i> Список каналов тарифного плана "Национальный"
                </dt>
            </a>
            <div class="uk-accordion-content" hidden="" aria-hidden="true">
                <dd class="uk-margin-small-top">
                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">

                        <!--Спорт-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Спорт</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-3@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/XSPORT1.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Новости-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Новости</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/a096d832e7eaac5985ad86bea151aa5d.png" alt="УНІАН"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/112.png" alt="112"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/espresso-tv.png" alt="Еспресо ТВ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/zik_logo_versiya2.jpg" alt="ZIK"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/pravda_tut_logo1.png" alt="ПравдаТУТ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/1delovoy.png" alt="Перший діловий"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/HROMADSKE-UA-logo_180_35.png" alt="Hromadske.ua"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/4Channel_logo_300_300.png" alt="4 канал"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/logo_5tv_01.png" alt="5 канал"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/24_novosti.png" alt="24"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/cb021b7ec416133cb320b1b2d87336aa.png" alt="Прямий"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/News_one.png" alt="NEWS ONE"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/7a02e0ba08e360cdddae09fe6925fb81.png" alt="Rabinovich TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/4bba5d06f002cb076db58518cb46e34f.png" alt="ЧП.Info"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/UA_TV.png" alt="UA | TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/nastoyaschee_vremya_logo1.png" alt="Настоящее Время"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/tv5-monde.png" alt="TV 5 Monde"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/dw.png" alt="DW (en)"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/36cd166d7d57bca52ef3a8d49af53a60.png" alt="DW (de)"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_euronews_174.jpg" alt="Euronews"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Bloomberg_Television_stack_blk.png" alt="Bloomberg TV"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Позноваетльные-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Позноваетльные</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/english-club-tv.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Mega-logo.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Кино-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Кино</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo-paramount-comedy_200_232.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Bolt_logo_200_173.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/filmuadrama.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ENTERFILM.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Музыкальные-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Музыкальные</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/m1newfin1-01.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/m2.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/O-tv.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/MB_logo_redes_2015_color.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Детские-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Детские</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/plus-plus.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/piksel.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/malyatko-tv.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Lale.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Информационно-развлекательные-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Информационно-развлекательные</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/1+1.png" alt="1+1"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ukraina_131.png" alt="ТРК Україна"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ictv_logo_200_100.png" alt="ICTV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/STB.png" alt="СТБ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/noviy-kanal.png" alt="Новый канал"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/tet_color_170x183.png" alt="ТЕТ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/2plus2_Logo200_100.png" alt="2+2"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Inter.png" alt="Інтер"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/kvartal.png" alt="Kvartal TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/uapershyi_logo.png" alt="UA: Перший"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/k1.png" alt="К1"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/k2.png" alt="К2"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/oboztv_logo_200_60.png" alt="Обоз TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/HTH-logo.png" alt="НТН"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/nlo-tv_.png" alt="НЛО"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/bigudi.png" alt="Бігуді"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/2ddb8bcfdac8b958c7022369bf9e9bc1.png" alt="Центральний"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ua-crimea-logo_200-32.png" alt="UA: Крим"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/zakarpattia170.png" alt="UA: ЗАКАРПАТТЯ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/donbas.png" alt="UA: Донбас"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/1_Zahidniy.png" alt="Перший Західний"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/kyiv_Ukr_orange-01.png" alt="ТРК Київ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/atr.png" alt="ATR"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/CHTRK1-01.png" alt="ТРК «Чорноморська»"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/avers_170.png" alt="Аверс"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/2c2e8a3a71543adc86503ebb75fc5913.png" alt="ТВА"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TV5_logo_UA-01.png" alt="TV5"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_pershiy_kanal_ukr_radio1.jpg" alt="Перший канал Українського радіо"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo-radio-kultura1.jpg" alt="Радіо «Культура»"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_radio_promin1.jpg" alt="Радіо «Промінь»"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_sun.png" alt="Сонце"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/OCE-logo_200_100.jpg" alt="Телеканал ОЦЕ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/indigo-tv.png" alt="Індиго ТВ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/g_tv_logo.png" alt="Genuine TV"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Zoom.png" alt="ZOOM"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/c5f736ed759be55f20fe237360a7b063.png" alt="Maxxi TV"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Telesvit_logo_200.png" alt="Телевсесвіт"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/KBS_World_Logo.png" alt="KBS World"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/eco-tv.png" alt="Еко-ТВ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/boutiquel_logo_250_47.png" alt="BOUTIQUE TV"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Natali_logo_200_60.png" alt="Наталі"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/cc62be63c11c67e026045a877b0cff93.png" alt="Milady Television"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/karavan_tv_200_119.png" alt="Караван TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/glas.png" alt="Глас"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/KRT_new.png" alt="КРТ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/rada.png" alt="Рада"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/c4cd07465fd4e2b1e753e12b077b1936.png" alt="UA: Культура"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/8_channel__logo_220_63.png" alt="8 Канал"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </dd>
            </div>
        </li>
        <li>
            <a class="uk-accordion-title" href="#">
                <dt>
                    <i class="fas fa-tv"></i> Список каналов тарифного плана "Семейный"
                </dt>
            </a>
            <div class="uk-accordion-content" hidden="" aria-hidden="true">
                <dd class="uk-margin-small-top">
                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">

                        <!--Спорт-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Спорт</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/viasat-sport.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/XSPORT1.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/trofey.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Новости-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Новости</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/a096d832e7eaac5985ad86bea151aa5d.png" alt="УНІАН"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/112.png" alt="112"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/espresso-tv.png" alt="Еспресо ТВ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/zik_logo_versiya2.jpg" alt="ZIK"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/pravda_tut_logo1.png" alt="ПравдаТУТ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/1delovoy.png" alt="Перший діловий"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/HROMADSKE-UA-logo_180_35.png" alt="Hromadske.ua"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/4Channel_logo_300_300.png" alt="4 канал"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/logo_5tv_01.png" alt="5 канал"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/24_novosti.png" alt="24"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/cb021b7ec416133cb320b1b2d87336aa.png" alt="Прямий"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/News_one.png" alt="NEWS ONE"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/7a02e0ba08e360cdddae09fe6925fb81.png" alt="Rabinovich TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/4bba5d06f002cb076db58518cb46e34f.png" alt="ЧП.Info"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/UA_TV.png" alt="UA | TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/nastoyaschee_vremya_logo1.png" alt="Настоящее Время"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/tv5-monde.png" alt="TV 5 Monde"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/dw.png" alt="DW (en)"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/36cd166d7d57bca52ef3a8d49af53a60.png" alt="DW (de)"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_euronews_174.jpg" alt="Euronews"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Bloomberg_Television_stack_blk.png" alt="Bloomberg TV"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Спорт-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Спорт</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/viasat_explore.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/VIASAT_HISTORY.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/VIASAT_NATURE.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/english-club-tv.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Mega-logo.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/dacha_logo.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Кино-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Спорт</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TV1000.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/VIP-LOGO-for_site_Comedy_200_104.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TV1000-ACTION.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TV1000_WorldKino_RGB11.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo-paramount-comedy_200_232.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Bolt_logo_200_173.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/filmuadrama.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ENTERFILM.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Музыкальные-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Музыкальные</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/m1newfin1-01.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/m2.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/O-tv.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/MB_logo_redes_2015_color.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Детские-->
                        <div class="uk-width-1-1@l uk-grid-margin uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Детские</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/plus-plus.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/piksel.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/malyatko-tv.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Lale.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Информационно-развлекательные-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Информационно-развлекательные</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/1+1.png" alt="1+1"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ukraina_131.png" alt="ТРК Україна"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ictv_logo_200_100.png" alt="ICTV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/STB.png" alt="СТБ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/noviy-kanal.png" alt="Новый канал"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/tet_color_170x183.png" alt="ТЕТ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/2plus2_Logo200_100.png" alt="2+2"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Inter.png" alt="Інтер"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/kvartal.png" alt="Kvartal TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/uapershyi_logo.png" alt="UA: Перший"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/k1.png" alt="К1"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/k2.png" alt="К2"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/oboztv_logo_200_60.png" alt="Обоз TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/HTH-logo.png" alt="НТН"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/nlo-tv_.png" alt="НЛО"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/bigudi.png" alt="Бігуді"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/2ddb8bcfdac8b958c7022369bf9e9bc1.png" alt="Центральний"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ua-crimea-logo_200-32.png" alt="UA: Крим"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/zakarpattia170.png" alt="UA: ЗАКАРПАТТЯ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/donbas.png" alt="UA: Донбас"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/1_Zahidniy.png" alt="Перший Західний"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/kyiv_Ukr_orange-01.png" alt="ТРК Київ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/atr.png" alt="ATR"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/CHTRK1-01.png" alt="ТРК «Чорноморська»"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/avers_170.png" alt="Аверс"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/2c2e8a3a71543adc86503ebb75fc5913.png" alt="ТВА"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TV5_logo_UA-01.png" alt="TV5"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_pershiy_kanal_ukr_radio1.jpg" alt="Перший канал Українського радіо"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo-radio-kultura1.jpg" alt="Радіо «Культура»"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_radio_promin1.jpg" alt="Радіо «Промінь»"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_sun.png" alt="Сонце"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/OCE-logo_200_100.jpg" alt="Телеканал ОЦЕ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/indigo-tv.png" alt="Індиго ТВ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/g_tv_logo.png" alt="Genuine TV"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Zoom.png" alt="ZOOM"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/c5f736ed759be55f20fe237360a7b063.png" alt="Maxxi TV"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Telesvit_logo_200.png" alt="Телевсесвіт"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/KBS_World_Logo.png" alt="KBS World"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/eco-tv.png" alt="Еко-ТВ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/boutiquel_logo_250_47.png" alt="BOUTIQUE TV"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Natali_logo_200_60.png" alt="Наталі"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/cc62be63c11c67e026045a877b0cff93.png" alt="Milady Television"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/karavan_tv_200_119.png" alt="Караван TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/glas.png" alt="Глас"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/KRT_new.png" alt="КРТ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/rada.png" alt="Рада"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/c4cd07465fd4e2b1e753e12b077b1936.png" alt="UA: Культура"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/8_channel__logo_220_63.png" alt="8 Канал"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </dd>
            </div>
        </li>
        <li>
            <a class="uk-accordion-title" href="#">
                <dt>
                    <i class="fas fa-tv"></i> Список каналов тарифного плана "Престижный"
                </dt>
            </a>
            <div class="uk-accordion-content" hidden="" aria-hidden="true">
                <dd class="uk-margin-small-top">
                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">

                        <!--Спорт-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Спорт</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ESP_CLT_1_NVY_RED_RGB.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/viasat-sport.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ESP_CLT_2_NVY_RED_RGB.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/XSPORT1.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/trofey.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Новости-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Новости</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/a096d832e7eaac5985ad86bea151aa5d.png" alt="УНІАН"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/112.png" alt="112"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/espresso-tv.png" alt="Еспресо ТВ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/zik_logo_versiya2.jpg" alt="ZIK"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/pravda_tut_logo1.png" alt="ПравдаТУТ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/1delovoy.png" alt="Перший діловий"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/HROMADSKE-UA-logo_180_35.png" alt="Hromadske.ua"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/4Channel_logo_300_300.png" alt="4 канал"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/logo_5tv_01.png" alt="5 канал"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/24_novosti.png" alt="24"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/cb021b7ec416133cb320b1b2d87336aa.png" alt="Прямий"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/News_one.png" alt="NEWS ONE"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/7a02e0ba08e360cdddae09fe6925fb81.png" alt="Rabinovich TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/4bba5d06f002cb076db58518cb46e34f.png" alt="ЧП.Info"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/UA_TV.png" alt="UA | TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/nastoyaschee_vremya_logo1.png" alt="Настоящее Время"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/tv5-monde.png" alt="TV 5 Monde"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/dw.png" alt="DW (en)"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/36cd166d7d57bca52ef3a8d49af53a60.png" alt="DW (de)"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_euronews_174.jpg" alt="Euronews"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Bloomberg_Television_stack_blk.png" alt="Bloomberg TV"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Познавательные-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Познавательные</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/viasat_explore.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/VIASAT_HISTORY.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/VIASAT_NATURE.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/english-club-tv.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/discovery.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/641f456f4a871195582e7345e73ef8ee.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/200_SCI_Logo.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/animalplanet_170_83.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/national-geographic-channel.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TCI_Pantone_2728C.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Mega-logo.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TLC-logo.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/fn_US_LOGO_RGB.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Fine_Living.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/dacha_logo.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Кино-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Кино</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/SET_new2.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/SCI_FI_NEW.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/SONY_TURBO_LOGO.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TV1000.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/VIP-LOGO-for_site_Comedy_200_104.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TV1000-ACTION.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TV1000_WorldKino_RGB11.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/SpikeLogo_150_60.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/fox_tv.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo-paramount-comedy_200_232.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Bolt_logo_200_173.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/filmuadrama.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ENTERFILM.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Музыкальные-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Музыкальные</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/m1newfin1-01.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/m2.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/O-tv.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/MB_logo_redes_2015_color.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Детские-->
                        <div class="uk-width-1-1@l uk-grid-margin uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Детские</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/plus-plus.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/piksel.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/malyatko-tv.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Lale.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Nickelodeon_logo.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/nick-jr.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Информационно-развлекательные-->
                        <div class="uk-width-1-1@l">
                            <h2 class="uk-heading-line uk-text-center"><span>Информационно-развлекательные</span></h2>
                            <div uk-grid="" class="uk-grid uk-grid-stack">

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/1+1.png" alt="1+1"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ukraina_131.png" alt="ТРК Україна"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ictv_logo_200_100.png" alt="ICTV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/STB.png" alt="СТБ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/noviy-kanal.png" alt="Новый канал"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/tet_color_170x183.png" alt="ТЕТ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/2plus2_Logo200_100.png" alt="2+2"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Inter.png" alt="Інтер"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/kvartal.png" alt="Kvartal TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/uapershyi_logo.png" alt="UA: Перший"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/k1.png" alt="К1"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/k2.png" alt="К2"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/oboztv_logo_200_60.png" alt="Обоз TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/HTH-logo.png" alt="НТН"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/nlo-tv_.png" alt="НЛО"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/bigudi.png" alt="Бігуді"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/2ddb8bcfdac8b958c7022369bf9e9bc1.png" alt="Центральний"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ua-crimea-logo_200-32.png" alt="UA: Крим"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/zakarpattia170.png" alt="UA: ЗАКАРПАТТЯ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/donbas.png" alt="UA: Донбас"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/1_Zahidniy.png" alt="Перший Західний"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/kyiv_Ukr_orange-01.png" alt="ТРК Київ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/atr.png" alt="ATR"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/CHTRK1-01.png" alt="ТРК «Чорноморська»"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/avers_170.png" alt="Аверс"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/2c2e8a3a71543adc86503ebb75fc5913.png" alt="ТВА"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TV5_logo_UA-01.png" alt="TV5"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_pershiy_kanal_ukr_radio1.jpg" alt="Перший канал Українського радіо"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo-radio-kultura1.jpg" alt="Радіо «Культура»"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_radio_promin1.jpg" alt="Радіо «Промінь»"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_sun.png" alt="Сонце"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/OCE-logo_200_100.jpg" alt="Телеканал ОЦЕ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/indigo-tv.png" alt="Індиго ТВ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/g_tv_logo.png" alt="Genuine TV"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Zoom.png" alt="ZOOM"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/c5f736ed759be55f20fe237360a7b063.png" alt="Maxxi TV"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Telesvit_logo_200.png" alt="Телевсесвіт"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/KBS_World_Logo.png" alt="KBS World"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/eco-tv.png" alt="Еко-ТВ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/boutiquel_logo_250_47.png" alt="BOUTIQUE TV"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Natali_logo_200_60.png" alt="Наталі"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/cc62be63c11c67e026045a877b0cff93.png" alt="Milady Television"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/karavan_tv_200_119.png" alt="Караван TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/glas.png" alt="Глас"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/KRT_new.png" alt="КРТ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/rada.png" alt="Рада"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/c4cd07465fd4e2b1e753e12b077b1936.png" alt="UA: Культура"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/8_channel__logo_220_63.png" alt="8 Канал"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </dd>
            </div>
        </li>
        <li>
            <a class="uk-accordion-title" href="#">
                <dt>
                    <i class="fas fa-tv"></i> Список каналов тарифного плана "Престижный HD"
                </dt>
            </a>
            <div class="uk-accordion-content" hidden="" aria-hidden="true">
                <dd class="uk-margin-small-top">
                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">

                        <!--Спорт-->
                        <div class="uk-width-1-1@l uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Спорт</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-6@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/ESP_CLT_1HD_NVY_RED_RGB.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/viasat-sport-hd.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/ESP_CLT_2_NVY_RED_RGB.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/XSPORT1.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/trofey.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Новости-->
                        <div class="uk-width-1-1@l uk-grid-margin uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Новости</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/a096d832e7eaac5985ad86bea151aa5d.png" alt="УНІАН"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/112hd.png" alt="112"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/espresso-tv.png" alt="Еспресо ТВ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/zik_logo_versiya2.jpg" alt="ZIK"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/pravda_tut_logo1.png" alt="ПравдаТУТ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/1delovoy.png" alt="Перший діловий"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/HROMADSKE-UA-logo_180_35.png" alt="Hromadske.ua"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/4Channel_logo_300_300.png" alt="4 канал"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/logo_5tv_01.png" alt="5 канал"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/24_novosti.png" alt="24"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/cb021b7ec416133cb320b1b2d87336aa.png" alt="Прямий"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/News_one.png" alt="NEWS ONE"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/7a02e0ba08e360cdddae09fe6925fb81.png" alt="Rabinovich TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/4bba5d06f002cb076db58518cb46e34f.png" alt="ЧП.Info"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/UA_TV.png" alt="UA | TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/nastoyaschee_vremya_logo1.png" alt="Настоящее Время"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/tv5-monde.png" alt="TV 5 Monde"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/dw.png" alt="DW (en)"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/36cd166d7d57bca52ef3a8d49af53a60.png" alt="DW (de)"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_euronews_174.jpg" alt="Euronews"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Bloomberg_Television_stack_blk.png" alt="Bloomberg TV"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Познавательные-->
                        <div class="uk-width-1-1@l uk-grid-margin uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Познавательные</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-6@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/viasat_explore.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/VIASAT_HISTORY.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/VIASAT_NATURE.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/viasat_history_nature_HD.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/discovery.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/641f456f4a871195582e7345e73ef8ee.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/200_SCI_Logo.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/animalplanet_170_83.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/national-geographic-channel.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TCI_Pantone_2728C.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Mega-logo.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TLC-logo.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l uk-grid-margin uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/fn_US_LOGO_RGB.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Fine_Living.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/dacha_logo.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/english-club-tv-hd.png"></div>

                                    </div>
                                </div>
                                <div class="uk-width-1-6@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/ShowcaseHD.png"></div>


                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Кино-->
                        <div class="uk-width-1-1@l uk-grid-margin uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Кино</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-6@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/SET_new2.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/SCI_FI_NEW.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/SONY_TURBO_LOGO.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TV1000.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/VIP-LOGO-for_site_Comedy_200_104.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TV1000-ACTION.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/TV1000_WorldKino_RGB11.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/SpikeLogo_150_60.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/fox_tv.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo-paramount-comedy_200_232.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Bolt_logo_200_173.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/filmuadrama.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l uk-grid-margin uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/ENTERFILM.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Музыкальные-->
                        <div class="uk-width-1-1@l uk-grid-margin uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Музыкальные</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/m1newfin1-01.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/m2.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/O-tv.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/MB_logo_redes_2015_color.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Детские-->
                        <div class="uk-width-1-1@l uk-grid-margin uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Детские</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/plus-plus.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/piksel.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/malyatko-tv.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Lale.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/nickelodeon-hd.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/nick-jr.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Информационно-развлекательные-->
                        <div class="uk-width-1-1@l uk-grid-margin uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Информационно-развлекательные</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/c3bf98acd13a71974041008bc01c3dc4.png" alt="1+1"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ukraina_131.png" alt="ТРК Україна"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/ictv_logo_200_100.png" alt="ICTV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/STB.png" alt="СТБ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/noviy-kanal.png" alt="Новый канал"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/tet_color_170x183.png" alt="ТЕТ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/2plus2_Logo200_100.png" alt="2+2"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Inter.png" alt="Інтер"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/kvartal.png" alt="Kvartal TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/uapershyi_logo.png" alt="UA: Перший"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/k1.png" alt="К1"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/k2.png" alt="К2"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/oboztv_logo_200_60.png" alt="Обоз TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/HTH-logo.png" alt="НТН"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/nlo-tv_.png" alt="НЛО"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/bigudi.png" alt="Бігуді"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/2ddb8bcfdac8b958c7022369bf9e9bc1.png" alt="Центральний"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ua-crimea-logo_200-32.png" alt="UA: Крим"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/zakarpattia170.png" alt="UA: ЗАКАРПАТТЯ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/donbas.png" alt="UA: Донбас"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/1_Zahidniy.png" alt="Перший Західний"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/kyiv_Ukr_orange-01.png" alt="ТРК Київ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/atr.png" alt="ATR"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/CHTRK1-01.png" alt="ТРК «Чорноморська»"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/avers_170.png" alt="Аверс"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/2c2e8a3a71543adc86503ebb75fc5913.png" alt="ТВА"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/TV5_logo_UA-01.png" alt="TV5"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_pershiy_kanal_ukr_radio1.jpg" alt="Перший канал Українського радіо"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/logo-radio-kultura1.jpg" alt="Радіо «Культура»"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_radio_promin1.jpg" alt="Радіо «Промінь»"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/logo_sun.png" alt="Сонце"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/OCE-logo_200_100.jpg" alt="Телеканал ОЦЕ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/indigo-tv.png" alt="Індиго ТВ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/g_tv_logo.png" alt="Genuine TV"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Zoom.png" alt="ZOOM"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/c5f736ed759be55f20fe237360a7b063.png" alt="Maxxi TV"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Telesvit_logo_200.png" alt="Телевсесвіт"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/KBS_World_Logo.png" alt="KBS World"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/eco-tv.png" alt="Еко-ТВ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/boutiquel_logo_250_47.png" alt="BOUTIQUE TV"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Natali_logo_200_60.png" alt="Наталі"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/cc62be63c11c67e026045a877b0cff93.png" alt="Milady Television"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/karavan_tv_200_119.png" alt="Караван TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/glas.png" alt="Глас"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/KRT_new.png" alt="КРТ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/rada.png" alt="Рада"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/c4cd07465fd4e2b1e753e12b077b1936.png" alt="UA: Культура"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/8_channel__logo_220_63.png" alt="8 Канал"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </dd>
            </div>
        </li>
        <li class="uk-open">
            <a class="uk-accordion-title" href="#">
                <dt>
                    <i class="fas fa-tv"></i> Список каналов тарифного плана "Премиум HD"
                </dt>
            </a>
            <div class="uk-accordion-content" hidden="" aria-hidden="true">
                <dd class="uk-margin-small-top">
                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">

                        <!--Спорт-->
                        <div class="uk-width-1-1@l uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Спорт</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-6@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/ESP_CLT_1HD_NVY_RED_RGB.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/viasat-sport-hd.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/ESP_CLT_2_NVY_RED_RGB.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/XSPORT1.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/trofey.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Новости-->
                        <div class="uk-width-1-1@l uk-grid-margin uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Новости</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/a096d832e7eaac5985ad86bea151aa5d.png" alt="УНІАН"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/112hd.png" alt="112"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/espresso-tv.png" alt="Еспресо ТВ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/zik_logo_versiya2.jpg" alt="ZIK"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/pravda_tut_logo1.png" alt="ПравдаТУТ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/1delovoy.png" alt="Перший діловий"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/HROMADSKE-UA-logo_180_35.png" alt="Hromadske.ua"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/4Channel_logo_300_300.png" alt="4 канал"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/logo_5tv_01.png" alt="5 канал"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/24_novosti.png" alt="24"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/cb021b7ec416133cb320b1b2d87336aa.png" alt="Прямий"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/News_one.png" alt="NEWS ONE"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/7a02e0ba08e360cdddae09fe6925fb81.png" alt="Rabinovich TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/4bba5d06f002cb076db58518cb46e34f.png" alt="ЧП.Info"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/UA_TV.png" alt="UA | TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/nastoyaschee_vremya_logo1.png" alt="Настоящее Время"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-first-column uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/tv5-monde.png" alt="TV 5 Monde"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/dw.png" alt="DW (en)"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/36cd166d7d57bca52ef3a8d49af53a60.png" alt="DW (de)"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_euronews_174.jpg" alt="Euronews"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Bloomberg_Television_stack_blk.png" alt="Bloomberg TV"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Познавательные-->
                        <div class="uk-width-1-1@l uk-grid-margin uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Познавательные</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-6@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/viasat_explore.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/VIASAT_HISTORY.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/VIASAT_NATURE.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/viasat_history_nature_HD.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/discovery.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/641f456f4a871195582e7345e73ef8ee.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/200_SCI_Logo.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/animalplanet_170_83.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/national-geographic-channel.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TCI_Pantone_2728C.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Mega-logo.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TLC-logo.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l uk-grid-margin uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/fn_US_LOGO_RGB.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Fine_Living.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/dacha_logo.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/english-club-tv-hd.png"></div>

                                    </div>
                                </div>
                                <div class="uk-width-1-6@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/ShowcaseHD.png"></div>


                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Кино-->
                        <div class="uk-width-1-1@l uk-grid-margin uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Кино</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-6@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/SET_new2.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/SCI_FI_NEW.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/SONY_TURBO_LOGO.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TV1000.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/VIP-LOGO-for_site_Comedy_200_104.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/TV1000-ACTION.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/TV1000_WorldKino_RGB11.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/SpikeLogo_150_60.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/fox_tv.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo-paramount-comedy_200_232.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Bolt_logo_200_173.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/filmuadrama.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-6@l uk-grid-margin uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/ENTERFILM.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Музыкальные-->
                        <div class="uk-width-1-1@l uk-grid-margin uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Музыкальные</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/m1newfin1-01.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/m2.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/O-tv.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/MB_logo_redes_2015_color.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Детские-->
                        <div class="uk-width-1-1@l uk-grid-margin uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Детские</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/plus-plus.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/piksel.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/malyatko-tv.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Lale.png"></div>
                                    </div>
                                </div>

                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/nickelodeon-hd.png"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/nick-jr.png"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Информационно-развлекательные-->
                        <div class="uk-width-1-1@l uk-grid-margin uk-first-column">
                            <h2 class="uk-heading-line uk-text-center"><span>Информационно-развлекательные</span></h2>
                            <div uk-grid="" class="uk-grid">

                                <div class="uk-width-1-4@l uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/c3bf98acd13a71974041008bc01c3dc4.png" alt="1+1"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ukraina_131.png" alt="ТРК Україна"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/ictv_logo_200_100.png" alt="ICTV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/STB.png" alt="СТБ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/noviy-kanal.png" alt="Новый канал"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/tet_color_170x183.png" alt="ТЕТ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/2plus2_Logo200_100.png" alt="2+2"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/Inter.png" alt="Інтер"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/kvartal.png" alt="Kvartal TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/uapershyi_logo.png" alt="UA: Перший"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/k1.png" alt="К1"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/k2.png" alt="К2"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/oboztv_logo_200_60.png" alt="Обоз TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/HTH-logo.png" alt="НТН"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/nlo-tv_.png" alt="НЛО"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/bigudi.png" alt="Бігуді"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/2ddb8bcfdac8b958c7022369bf9e9bc1.png" alt="Центральний"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/ua-crimea-logo_200-32.png" alt="UA: Крим"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/zakarpattia170.png" alt="UA: ЗАКАРПАТТЯ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/donbas.png" alt="UA: Донбас"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/1_Zahidniy.png" alt="Перший Західний"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/kyiv_Ukr_orange-01.png" alt="ТРК Київ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/atr.png" alt="ATR"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/CHTRK1-01.png" alt="ТРК «Чорноморська»"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/avers_170.png" alt="Аверс"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/2c2e8a3a71543adc86503ebb75fc5913.png" alt="ТВА"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/TV5_logo_UA-01.png" alt="TV5"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_pershiy_kanal_ukr_radio1.jpg" alt="Перший канал Українського радіо"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/logo-radio-kultura1.jpg" alt="Радіо «Культура»"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/logo_radio_promin1.jpg" alt="Радіо «Промінь»"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/logo_sun.png" alt="Сонце"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/OCE-logo_200_100.jpg" alt="Телеканал ОЦЕ"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/indigo-tv.png" alt="Індиго ТВ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/g_tv_logo.png" alt="Genuine TV"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Zoom.png" alt="ZOOM"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/c5f736ed759be55f20fe237360a7b063.png" alt="Maxxi TV"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Telesvit_logo_200.png" alt="Телевсесвіт"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/KBS_World_Logo.png" alt="KBS World"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/eco-tv.png" alt="Еко-ТВ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/boutiquel_logo_250_47.png" alt="BOUTIQUE TV"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin uk-first-column">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/Natali_logo_200_60.png" alt="Наталі"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/cc62be63c11c67e026045a877b0cff93.png" alt="Milady Television"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/karavan_tv_200_119.png" alt="Караван TV"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/glas.png" alt="Глас"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/KRT_new.png" alt="КРТ"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/rada.png" alt="Рада"></div>
                                    </div>
                                </div>
                                <div class="uk-width-1-4@l uk-grid-margin">
                                    <div uk-grid="" class="uk-grid-small uk-grid">
                                        <div class="uk-width-1-2@l uk-first-column"><img src="https://viasat.ua/uploads/images/c4cd07465fd4e2b1e753e12b077b1936.png" alt="UA: Культура"></div>
                                        <div class="uk-width-1-2@l"><img src="https://viasat.ua/uploads/images/8_channel__logo_220_63.png" alt="8 Канал"></div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </dd>
            </div>
        </li>
    </ul>
</dl>

<h2>Что входит в указанную стоимость</h2>
<dl class="uk-description-list uk-description-list-divider">
    <dt>Выезд мастера</dt>
    <dd>После того как вы согласуете все детали вашего подключения по телефону, наш мастер выедет к вам на объект.</dd>
    <dt>Оборудование</dt>
    <dd>К примеру вы выбрали комплект №4 на четыре телевизора за 5300 грн. В эту сумму будут включены четыре тюнера, параболическая антена, три антенных передатчика и сплиттер на четыре телевизора.</dd>
    <dt>Монтаж и настройка</dt>
    <dd>Собрав всю необходимую информацию о подключении, наш мастер, со всем необходимым оборудованием для подключения спутникового телевидения, приедет к вам на объект, осуществит монтаж спутниковой антены и отведёт нужное количество кабеля до
        каждого телевизора, после чего будет произведена настройка ресиверов.
    </dd>
</dl><h2>Дополнительная информация</h2><h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения всех каналов без абонентской платы</h3>
<ul class="uk-list"><a href="/ru/подключение-и-настройка-спутникового-телевидения">
    <li><i class="fas fa-external-link-alt"></i> Подключение и настройка спутникового телевидения</li>
</a>
    <p class="uk-text-meta uk-margin-remove">* В данном подключении с 20.01.2020 г. не будет основных украинских каналов</p>  <a href="/ru/подключение-и-настройка-цифрового-эфирного-телевидения-т2">
        <li class="uk-padding-small uk-padding-remove-left"><i class="fas fa-external-link-alt"></i> Подключение и настройка цифрового эфирного телевидения (DVB-T2)</li>
    </a> <a href="/ru/подключение-и-настройка-комбинированного-спутникового-и-эфирного-т2-телевидения">
        <li><i class="fas fa-external-link-alt"></i> Подключение и настройка комбинированного (спутникового и эфирного DVB-T2) телевидения</li>
    </a></ul><h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения всех каналов c абонентской платой</h3>
<ul class="uk-list"><a href="/ru/лючение-и-настройка-extra-tv">
    <li><i class="fas fa-external-link-alt"></i> Подключение и настройка Extra TV</li>
</a> <a href="/ru/подключение-и-настройка-интернет-телевидения-iptv-ott">
    <li class="uk-padding-small uk-padding-remove-left uk-padding-remove-bottom"><i class="fas fa-external-link-alt"></i>Подключение и настройка интернет телевидения (IPTV, OTT)</li>
</a></ul>
', 20);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 17, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Подключение и настройка<br>
Extra TV</h1>
    
    
    
    
  </div>
</div>', 21);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 18, ' ', 22);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 19, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Модернизация,настройка и<br>
ремонт спутниковой антены</h1>
    
    
    
    
  </div>
</div>', 23);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 20, ' ', 24);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 21, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Ремонт, настройка и прошивка<br>
спутниковых тюнеров (ресиверов)</h1>
    
    
    
    
  </div>
</div>', 25);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 22, ' ', 26);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 23, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Модернизация, настройка и ремонт оборудования<br>
для цифрового эфирного телевидения (Т2)</h1>
    
    
    
    
  </div>
</div>', 27);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 24, ' ', 28);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 25, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Megogo</h1>
    
    
    
    
  </div>
</div>', 29);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 26, ' ', 30);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 27, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">OLL TV</h1>
    
    
    
    
  </div>
</div>', 31);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 28, ' ', 32);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 29, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Divan TV</h1>
    
    
    
    
  </div>
</div>', 33);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 30, ' ', 34);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 31, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Демонтаж спутниковой антены</h1>
    
    
    
    
  </div>
</div>', 35);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 32, ' ', 36);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 53, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">  <div class="uk-width-1-1@l uk-padding uk-first-column">    <h1 class="uk-margin-small page-header">Подключение и настройка комбинированного (эфирного и спутникового) телевидения</h1>                  </div></div>', 57);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 54, '<h2>Цены</h2><h3 class="red-color uk-text-bold uk-text-uppercase">Комплект на 1ТВ (Спутниковая + пассивная эфирная антена + комбинированный тюнер)</h3><div class="uk-grid-small" uk-grid>  <div class="uk-width-expand" uk-leader><i class="fas fa-satellite-dish"></i> + <i class="fas fa-broadcast-tower"></i></div>  <div class="uk-width-1-5" uk-leader><i class="fas fa-tv"></i></div>  <div class="uk-width-1-4">Цена: 2900 - 3150 грн.</i></div></div><p class="uk-text-meta uk-margin-small-top">* В данной комплектации используется пассивная антена для одного телевизора. Для обеспечения уверенного приёма и качественной картинки  растояние между эфирной вышкой и приёмной антеной Т2 должно быть <span    class="red-color uk-text-bold">не больше 20 км</span>. В комплекте идёт 10 метров коаксиального кабеля.</p><h3 class="red-color uk-text-bold uk-text-uppercase">Комплект на 1ТВ (Спутниковая + активная эфирная антена с усилителем + комбинированный тюнер)</h3><div class="uk-grid-small" uk-grid>  <div class="uk-width-expand" uk-leader><i class="fas fa-satellite-dish"></i> + <i class="fas fa-broadcast-tower red-color"></i></div>  <div class="uk-width-1-5" uk-leader><i class="fas fa-tv"></i></div>  <div class="uk-width-1-4">Цена: 3000 - 3250 грн.</i></div></div><p class="uk-text-meta uk-margin-small-top">* В данной комплектации используется антена с усилителем для одного телевизора. Для обеспечения уверенного приёма и качественной  картинки растояние между эфирной вышкой и приёмной антеной Т2 должно быть <span    class="red-color uk-text-bold">не  больше  40 км</span>. В комплекте идёт 10 метров коаксиального кабеля.</p><h3 class="red-color uk-text-bold uk-text-uppercase">Комплект на 1ТВ(Спутниковая + пассивная эфирная антена + внешний усилитель + комбинированный тюнер)</h3><div class="uk-grid-small" uk-grid>  <div class="uk-width-expand" uk-leader><i class="fas fa-satellite-dish"></i> + <i class="fas fa-broadcast-tower"></i> + <span class="red-color">УСИЛИТЕЛЬ</span></div>  <div class="uk-width-1-5" uk-leader><i class="fas fa-tv"></i></div>  <div class="uk-width-1-4">Цена: 3400 - 3650 грн.</i></div></div><p class="uk-text-meta uk-margin-small-top">* В данной комплектации используется пасивная антена с внешним усилителем для одного телевизора. Для обеспечения уверенного приёма и  качественной картинки растояние между эфирной вышкой и приёмной антеной Т2 должно  быть <span class="red-color uk-text-bold">не больше 80 км</span>. В комплекте идёт 10 метров коаксиального кабеля.</p><table class="uk-table uk-table-hover uk-table-middle uk-table-divider">  <thead>  <tr>    <th>Комплект на</th>    <th class="uk-width-small">Цена</th>    <th class="uk-table-shrink uk-text-nowrap"></th>  </tr>  </thead>  <tbody>  <tr>    <td>2 ТВ</td>    <td class="uk-text-truncate">4900 - 5300 грн.</td>  </tr>  <tr>    <td>3 ТВ</td>    <td class="uk-text-truncate">5800 - 6200 грн.</td>  </tr>  <tr>    <td>4 ТВ</td>    <td class="uk-text-truncate">6600 - 7000 грн.</td>  </tr>  <tr>    <td>5 ТВ</td>    <td class="uk-text-truncate">7400 - 7800 грн.</td>  </tr>  </tbody></table><hr class="uk-divider-icon"><h2>Что входит в указанную стоимость</h2><dl class="uk-description-list uk-description-list-divider">  <dt>Выезд мастера</dt>  <dd>После того как вы согласуете все детали вашего подключения по телефону, наш мастер выедет к вам на объект.</dd>  <dt>Оборудование</dt>  <dd>Комплектация зависит от : 1. Растояния между вышкой и местом монтажа антены, высоты на которой будет размещена антена, окружающей среды и наличия других радио устройств.    Комплект по самой низкой цене является опциональным и применяется в тех местах где уселение не нужно и качество сигнала высокое. В большинстве случаев используется комплектация    с усилителем сигнала. <span class="red-color">Эти условия не относится к подключению спутниковой антены</span>.  </dd>  <dt>Монтаж и настройка</dt>  <dd>Собрав всю необходимую информацию о подключении, наш мастер, со всем необходимым оборудованием для подключения комбинированного спутиникового + эфирного (DVB-T2) телевидения,    приедет к вам на объект. После    чего он осуществит монтаж антен и их настройку. Далее монтажник отведёт нужное количество кабеля до места размещения телевизора. Окончательным этапом является подключение    тюнера и его настройка.  </dd></dl><hr class="uk-divider-icon"><h2>Дополнительная информация</h2><h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения без абонентской платы</h3><ul class="uk-list">  <a href="/ru/подключение-и-настройка-спутникового-телевидения">    <li><i class="fas fa-external-link-alt"></i> Подключение и настройка спутникового телевидения    </li>  </a>  <p class="uk-text-meta uk-margin-remove">* В данном подключении с 20.01.2020 г. не будет основных украинских каналов</p>  <a href="/ru/подключение-и-настройка-цифрового-эфирного-телевидения-т2">    <li class="uk-padding-small uk-padding-remove-left uk-padding-remove-bottom"><i class="fas fa-external-link-alt"></i> Подключение и настройка цифрового эфирного телевидения      (DVB-T2)    </li>  </a></ul><h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения всех каналов c абонентской платой</h3><ul class="uk-list">  <a href="/ru/подключение-и-настройка-viasat">    <li><i class="fas fa-external-link-alt"></i> Подключение и настройка Viasat</li>  </a>  <a href="/ru/лючение-и-настройка-extra-tv">    <li class="uk-padding-small uk-padding-remove-left"><i class="fas fa-external-link-alt"></i> Подключение и настройка Extra TV</li>  </a>  <a href="/ru/подключение-и-настройка-интернет-телевидения-iptv-ott">    <li><i class="fas fa-external-link-alt"></i>Подключение и настройка интернет телевидения (IPTV, OTT)</li>  </a></ul>', 58);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 14, '  <ul uk-accordion>
    <li class="uk-open"><a style=" margin-left: -30px; " class="uk-accordion-title" href="#"><h2 class="uk-margin-remove text-underline">
      Megogo</h2></a>
      <div class="uk-accordion-content">
        <dl class="uk-description-list uk-description-list-divider">
          <dt>Стоимость подключения</dt>
          <dd class="uk-margin-small-top">1. Базовый комплект: приставка + настройка <span class="red-color">|</span>
            Цена: <span class="red-color">от 2000 грн.</span></dd>
        </dl>
        <dl class="uk-description-list uk-description-list-divider">
          <dt>Тарифные планы Megogo</dt>
          <div class="plans">
            <dd class="uk-margin-small-top"><i class="fas fa-list"></i> Тарифный план: Лёгкий <span
              class="red-color">|</span> Цена: 80 грн./мес
            </dd>
            <dd class="uk-margin-small-top"><i class="fas fa-list"></i> Тарифный план: Оптимальный <span
              class="red-color">|</span> Цена: 97 грн./мес
            </dd>
            <dd class="uk-margin-small-top"><i class="fas fa-list"></i> Тарифный план: Максимальный <span
              class="red-color">|</span> Цена: 197 грн./мес
            </dd>
          </div>
        </dl>
        <dl class="uk-description-list uk-description-list-divider channel-list">
          <ul uk-accordion>
            <li class="uk-open">
              <a class="uk-accordion-title" href="#">
                <dt><i class="fas fa-tv"></i></i> Список каналов тарифного плана "Лёгкий"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">
                  <h2 class="uk-heading-line uk-text-center"><span>Развлекательные</span></h2>
                  <div class="uk-flex uk-flex-wrap channels-list">
                    <div><img src="/images/television/channels/1+1-hd.jpg"></div>
                    <div><img src="/images/television/channels/novyj-kanal-hd.jpg"></div>
                    <div><img src="/images/television/channels/stb-hd.jpg"></div>
                    <div><img src="/images/television/channels/ictv-hd.jpg"></div>
                    <div><img src="/images/television/channels/2+2.jpg"></div>
                    <div><img src="/images/television/channels/telekanal-ukraina.jpg"></div>
                    <div><img src="/images/television/channels/kvartal-tv.jpg"></div>
                    <div><img src="/images/television/channels/tet.jpg"></div>
                    <div><img src="/images/television/channels/k1.jpg"></div>
                    <div><img src="/images/television/channels/ntn.jpg"></div>
                    <div><img src="/images/television/channels/nlo-tv.jpg"></div>
                    <div><img src="/images/television/channels/oce-hd.jpg"></div>
                    <div><img src="/images/television/channels/inter.jpg"></div>
                    <div><img src="/images/television/channels/indigo-tv.jpg"></div>
                    <div><img src="/images/television/channels/bitva-prestolov.jpg"></div>
                    <div><img src="/images/television/channels/ua-pershiy-hd.jpg"></div>
                  </div>
                  <h2 class="uk-heading-line uk-text-center"><span>Фильмы и сериалы</span></h2>
                  <div class="uk-flex uk-flex-wrap channels-list">
                    <div><img src="/images/television/channels/megogo-treyleri-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-kinochit-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-komedia-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-boevik-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-romantika-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-drama-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-istorii-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-ujasy-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-zolotoy-fond-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-ekranizaciya-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-serial-ua-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-serial-komedii-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-kino-ua-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-svaty-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-serial-melodrama-hd.jpg"></div>
                    <div><img src="/images/television/channels/enter-film.jpg"></div>
                    <div><img src="/images/television/channels/bigudi.jpg"></div>
                  </div>
                  <h2 class="uk-heading-line uk-text-center"><span>Познавательные</span></h2>
                  <div class="uk-flex uk-flex-wrap channels-list">
                    <div><img src="/images/television/channels/mega.jpg"></div>
                    <div><img src="/images/television/channels/eko-tv.jpg"></div>
                    <div><img src="/images/television/channels/smak-hd.jpg"></div>
                    <div><img src="/images/television/channels/ua-kultura.jpg"></div>
                  </div>
                  <h2 class="uk-heading-line uk-text-center"><span>Детские</span></h2>
                  <div class="uk-flex uk-flex-wrap channels-list">
                    <div><img src="/images/television/channels/plus-plus.jpg"></div>
                    <div><img src="/images/television/channels/megogo-fiksiki-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-masha-i-medved-hd.jpg"></div>
                    <div><img src="/images/television/channels/piksel-tv.jpg"></div>
                    <div><img src="/images/television/channels/uma-and-umi-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-multpremiera-hd.jpg"></div>
                    <div><img src="/images/television/channels/maliatko-tv.jpg"></div>
                    <div><img src="/images/television/channels/megogo-teremok.jpg"></div>
                    <div><img src="/images/television/channels/lale-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-barboskiny-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-luntik-hd.jpg"></div>
                  </div>
                  <h2 class="uk-heading-line uk-text-center"><span>Спорт</span></h2>
                  <div class="uk-flex uk-flex-wrap channels-list">
                    <div><img src="/images/television/channels/x-sport-hd.jpg"></div>
                    <div><img src="/images/television/channels/most-video-tv-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-kibersport.jpg"></div>
                  </div>
                  <h2 class="uk-heading-line uk-text-center"><span>Музыка</span></h2>
                  <div class="uk-flex uk-flex-wrap channels-list">
                    <div><img src="/images/television/channels/m1-hd.jpg"></div>
                    <div><img src="/images/television/channels/megogo-live-hd.jpg"></div>
                    <div><img src="/images/television/channels/nash-hd.jpg"></div>
                    <div><img src="/images/television/channels/o-tv-music.jpg"></div>
                    <div><img src="/images/television/channels/m2-hd.jpg"></div>
                    <div><img src="/images/television/channels/eu-music-hd.jpg"></div>
                    <div><img src="/images/television/channels/music-box-ua-hd.jpg"></div>
                    <div><img src="/images/television/channels/nashe-music-hd.jpg"></div>
                    <div><img src="/images/television/channels/nash-kids-hd.jpg"></div>
                    <div><img src="/images/television/channels/ethno-channel-hd.jpg"></div>
                  </div>
                  <h2 class="uk-heading-line uk-text-center"><span>Другие</span></h2>
                  <div class="uk-flex uk-flex-wrap channels-list">
                    <div><img src="/images/television/channels/k2.jpg"></div>
                    <div><img src="/images/television/channels/televsesvit-hd.jpg"></div>
                    <div><img src="/images/television/channels/fashion-and-lifestyle-hd.jpg"></div>
                    <div><img src="/images/television/channels/id-fashion-hd.jpg"></div>
                    <div><img src="/images/television/channels/solnce.jpg"></div>
                    <div><img src="/images/television/channels/8-kanal-hd.jpg"></div>
                    <div><img src="/images/television/channels/krt.jpg"></div>
                    <div><img src="/images/television/channels/atr-hd.jpg"></div>
                    <div><img src="/images/television/channels/zoom.jpg"></div>
                    <div><img src="/images/television/channels/cnl.jpg"></div>
                    <div><img src="/images/television/channels/telekanal-nadiya.jpg"></div>
                    <div><img src="/images/television/channels/telekompania-glas.jpg"></div>
                    <div><img src="/images/television/channels/pravda-tut-hd.jpg"></div>
                    <div><img src="/images/television/channels/kiev.jpg"></div>
                    <div><img src="/images/television/channels/milady-television.jpg"></div>
                    <div><img src="/images/television/channels/telekanal-vozrojdenie.jpg"></div>
                    <div><img src="/images/television/channels/megogo-blog-hd.jpg"></div>
                    <div><img src="/images/television/channels/sk1-hd.jpg"></div>
                    <div><img src="/images/television/channels/bambarbia-tv-hd.jpg"></div>
                    <div><img src="/images/television/channels/radio-nv.jpg"></div>
                    <div><img src="/images/television/channels/navigator-tv-hd.jpg"></div>
                    <div><img src="/images/television/channels/travel-guide-tv-hd.jpg" title="Travel guide tv hd"></div>
                    <div><img src="/images/television/channels/oboz-tv-hd.jpg"></div>
                    <div><img src="/images/television/channels/skrypin-ua-hd.jpg"></div>
                  </div>
                  <h2 class="uk-heading-line uk-text-center"><span>Новости</span></h2>
                  <div class="uk-flex uk-flex-wrap channels-list">
                    <div><img src="/images/television/channels/112-ukraina-hd.jpg"></div>
                    <div><img src="/images/television/channels/nash-telekanal.jpg"></div>
                    <div><img src="/images/television/channels/5-kanal.jpg"></div>
                    <div><img src="/images/television/channels/novini-24-hd.jpg"></div>
                    <div><img src="/images/television/channels/news-one-hd.jpg"></div>
                    <div><img src="/images/television/channels/euronews.jpg"></div>
                    <div><img src="/images/television/channels/trt-world-hd.jpg"></div>
                    <div><img src="/images/television/channels/4-kanal-hd.jpg"></div>
                    <div><img src="/images/television/channels/belarus-24.jpg"></div>
                    <div><img src="/images/television/channels/espreso-tv-hd.jpg"></div>
                    <div><img src="/images/television/channels/euronew-english-hd.jpg"></div>
                    <div><img src="/images/television/channels/hromadske-hd.jpg"></div>
                    <div><img src="/images/television/channels/priamiy-hd.jpg"></div>
                    <div><img src="/images/television/channels/unian.jpg"></div>
                    <div><img src="/images/television/channels/zik-hd.jpg"></div>
                    <div><img src="/images/television/channels/deutsche-welle.jpg"></div>
                    <div><img src="/images/television/channels/pershiy-diloviy-telekanal.jpg"></div>
                    <div><img src="/images/television/channels/ch-p-info.jpg"></div>
                    <div><img src="/images/television/channels/rabinovich-tv.jpg"></div>
                    <div><img src="/images/television/channels/telekanal-rada.jpg"></div>
                    <div><img src="/images/television/channels/ukraina-24.jpg"></div>
                    <div><img src="/images/television/channels/nastoyashee-vremia-hd.jpg"></div>
                    <div><img src="/images/television/channels/kbs-world-hd.jpg"></div>
                    <div><img src="/images/television/channels/france-24-arabic.jpg"></div>
                    <div><img src="/images/television/channels/france-24-english.jpg"></div>
                    <div><img src="/images/television/channels/france-24-french-hd.jpg"></div>
                  </div><h2 class="uk-heading-line uk-text-center"><span>Телемагазины</span></h2>
                  <div class="uk-flex uk-flex-wrap channels-list">
                    <div><img src="/images/television/channels/boutique-tv.jpg"></div>
                    <div><img src="/images/television/channels/natali.jpg"></div>
                    <div><img src="/images/television/channels/karavan-tv.jpg"></div>
                    <div><img src="/images/television/channels/genuine-tv.jpg"></div>
                  </div>
                </dd>
              </div>
            </li>
            <li>
              <a class="uk-accordion-title" href="#">
                <dt><i class="fas fa-tv"></i></i> Список каналов тарифного плана "Оптимальный"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">
                  <div uk-grid class="uk-grid-small">

                    <!--Развлекательные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Развлекательные</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/1+1.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/new-channel.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/stb.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ictv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/2+2.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ukraina.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kvartal-tv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tet.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/k1.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ntn.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nlo-tv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/oce.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/inter.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/indigo-tv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/pershiy.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/novogodniy.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/36,6-hd.webp"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Фильмы и сериалы-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Фильмы и сериалы</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/treyleri-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/enter-film.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kinohit-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/komedia-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/boevik-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/romantika-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/drama-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/istorii-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ujasi-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/zolotoy-fond-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ekranizacia-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/serial-ua-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/serial-komedii-hd.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/bigudi.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kino-ua-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/svaty-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/serial-melodrama-hd.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/sony-channel.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tv1000.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tv1000-world-kino.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/vip-comedy-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tv1000-action.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/megachit-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/fantastika-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/epocha-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/film-ua-drama.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/triller-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/prime-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/love-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/premium-kino-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/dorama-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/bollywood-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/smotri-kak-slishno-hd.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kino-zvuchit-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/film-box-arthouse-hd.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/filmbox.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/star-family-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/star-cinema-hd.webp"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Познавательные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Познавательные</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/mega.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/eko-tv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-kultura.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/viasat-explore.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/viasat-nature.webp"></div>
                            <div class="uk-width-1-2@l"><img
                              src="/images/television/channels/viasat-nature-history-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/viasat-history.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/history-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/wallpaper-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/docubox-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kus-kus.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/dacha-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/terra.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nauka.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/epoque-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/fauna.webp"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Детские-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Детские</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/plus-plus.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/fiksiki-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/masha-i-medved-hd.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/piksel-tv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/uma-i-umi-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/multipremiera-hd.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/maliatko-tv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/teremok-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/lale-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/luntik-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/multserial-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/lego-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kids-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/niki-kids-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/niki-junior-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img
                              src="/images/television/channels/smotri-kak-slishno-deti-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/gametoon-hd.webp"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Спорт-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Спорт</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/xsport-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/mostvideo-tv-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/setanta-sports.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/viasat-sport-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/trofey-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/sport1.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/megogo-futbol-hd.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/megogo-futbol.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/fightbox-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/fast-and-fun-box-hd.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/sport2-baltic.webp"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Музыка-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Музыка</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/m1.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/megogo-live-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nash-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/otv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/m2.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/eu-music-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/music-box-ua-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nashe-music-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nash-kids-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ethno-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/360-tune-box-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/karaoke.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/music4ever-hd.webp"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Другие-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Другие</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/k2.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/televsesvit-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="/images/television/channels/hd-fashion-and-livestyle.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/id-fashion-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/sonce.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/8-kanal-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/boutique-tv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/krt.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/art-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/zoom.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/cnl.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nadiya.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/glas.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/pravda-tut-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kiev.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/miledi-tv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/vozrojdenie.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/blog-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/sk1-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/bambarbia-tv-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/navigator-tv-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/travel-guide-hd-tv.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/oboz-tv-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/skrypin-ua-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/fashion-box-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/fashion-tv-hd.webp"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Новости-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Новости</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/112-ukraina-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nash.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/5-kanal.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/novini-24-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/newsone-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/euronews.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/trtworld-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/4-kanal-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/belarus24.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/espreso-tv-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/euronews-hd-eng.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/hromadske-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/priamiy-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/unian.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/zik-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/deutsche-welle.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/perviy-deloviy.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ch-p-info.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/rabinovich-tv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/rada.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ukraina24.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nastoyashee-vremia-hd.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kbs-world-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/france-24-arabic.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/france-24-eng.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/france-24-french-hd.webp">
                            </div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Региональные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Региональные</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/trk-aleks.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ternopil1-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/21ujgorod.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/pravda-tut-lviv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-kiev.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tv5.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/odess-int.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/trk-chernomorskaya.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/otv-dnepr.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/pershiy-zachidniy.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-zakarpattia.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-krim.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ujnaya-volna-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-donbas.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tv-dom.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-chernigiv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/d1.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-ternopil.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-charkiv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-cherkasy.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-volin.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-mikolaiv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-bukovina.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-zaporijjia.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-sumy.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-rivne.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-poltava.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-odesa.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-lviv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-kropivnickiy.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/centralniy-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/11-kanal-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/poltavske-tv-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ptrk-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tv-4.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/donetchina-tv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/telekanal-z.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/dnipro-tv-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="/images/television/channels/cherniveckiy-promin-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/33-kanal.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-jitomir-hd.webp"></div>
                          </div>
                        </div>
                      </div>
                    </div>

                  </div>
                </dd>
              </div>
            </li>
            <li>
              <a class="uk-accordion-title" href="#">
                <dt><i class="fas fa-tv"></i></i> Список каналов тарифного плана "Максимальный"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">
                  <div uk-grid class="uk-grid-small">

                    <!--Развлекательные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Развлекательные</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/1+1.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/new-channel.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/stb.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ictv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/2+2.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ukraina.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kvartal-tv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tet.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/k1.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ntn.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nlo-tv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/oce.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/inter.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/indigo-tv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/pershiy.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/novogodniy.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/36,6-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/dtx-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tlc.webp"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Фильмы и сериалы-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Фильмы и сериалы</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/treyleri-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/enter-film.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kinohit-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/komedia-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/boevik-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/romantika-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/drama-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/istorii-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ujasi-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/zolotoy-fond-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ekranizacia-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/serial-ua-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/serial-komedii-hd.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/bigudi.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kino-ua-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/svaty-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/serial-melodrama-hd.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/sony-channel.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tv1000.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tv1000-world-kino.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/vip-comedy-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tv1000-action.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/megachit-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/fantastika-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/epocha-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/film-ua-drama.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/triller-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/prime-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/love-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/premium-kino-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/dorama-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/bollywood-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/smotri-kak-slishno-hd.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kino-zvuchit-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/film-box-arthouse-hd.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/filmbox.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/star-family-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/star-cinema-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/paramount-channel.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/spike.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/amediateka2-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/amediateka1-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/start1-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/fox-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/vip-premiere-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/vip-megahit-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/paramount-comedy.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/sony-turbo.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/sony-sci-fi.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/epic-drama-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/bolt-hd.webp"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Познавательные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Познавательные</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/mega.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/eko-tv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-kultura.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/viasat-explore.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/viasat-nature.webp"></div>
                            <div class="uk-width-1-2@l"><img
                              src="/images/television/channels/viasat-nature-history-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/viasat-history.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/history-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/wallpaper-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/docubox-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kus-kus.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/dacha-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/terra.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nauka.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/epoque-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/fauna.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/discovery-channel.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="/images/television/channels/national-georgaphic-channel-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/discovery-science-hd.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nat-geo-wild-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/travel-channel.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/animal-planet-hd.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/id-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/english-club-tv-hd.webp">
                            </div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Детские-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Детские</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/plus-plus.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/fiksiki-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/masha-i-medved-hd.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/piksel-tv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/uma-i-umi-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/multipremiera-hd.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/maliatko-tv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/teremok-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/lale-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/luntik-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/multserial-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/lego-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kids-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/niki-kids-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/niki-junior-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img
                              src="/images/television/channels/smotri-kak-slishno-deti-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/gametoon-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nick-junior.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nickelodeon.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tiji.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/gulli-girl.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nicktoons.webp"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Спорт-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Спорт</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/xsport-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/mostvideo-tv-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/setanta-sports.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/viasat-sport-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/trofey-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/sport1.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/megogo-futbol-hd.webp">
                            </div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/megogo-futbol.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/fightbox-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/fast-and-fun-box-hd.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/sport2-baltic.webp"></div>
                            <div class="uk-width-1-2@l"><img
                              src="/images/television/channels/perviy-avtomobilniy-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/eurosport1-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/eurosport2.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/sport2.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/sport1-baltic.webp"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Музыка-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Музыка</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/m1.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/megogo-live-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nash-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/otv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/m2.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/eu-music-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/music-box-ua-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nashe-music-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nash-kids-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ethno-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/360-tune-box-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/karaoke.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/music4ever-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/mtv-hits.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/mtv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/mtv-dance.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/vh1.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/vh1-classic.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/mtv-rocks.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/mtv-live-hd.webp"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Другие-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Другие</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/k2.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/televsesvit-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="/images/television/channels/hd-fashion-and-livestyle.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/id-fashion-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/sonce.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/8-kanal-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/boutique-tv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/krt.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/art-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/zoom.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/cnl.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nadiya.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/glas.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/pravda-tut-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kiev.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/miledi-tv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/vozrojdenie.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/blog-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/sk1-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/bambarbia-tv-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/navigator-tv-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/travel-guide-hd-tv.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/oboz-tv-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/skrypin-ua-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/fashion-box-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/fashion-tv-hd.webp"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Эротика-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Эротика</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/playboy-tv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/penthouse-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/erox-hd.webp"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Новости-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Новости</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/112-ukraina-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nash.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/5-kanal.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/novini-24-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/newsone-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/euronews.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/trtworld-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/4-kanal-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/belarus24.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/espreso-tv-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/euronews-hd-eng.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/hromadske-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/priamiy-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/unian.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/zik-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/deutsche-welle.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/perviy-deloviy.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ch-p-info.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/rabinovich-tv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/rada.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ukraina24.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/nastoyashee-vremia-hd.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/kbs-world-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/france-24-arabic.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/france-24-eng.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/france-24-french-hd.webp">
                            </div>
                          </div>
                        </div>


                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/bbc-world-news.webp"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                    <!--Региональные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Региональные</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/trk-aleks.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ternopil1-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/21ujgorod.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/pravda-tut-lviv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-kiev.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tv5.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/odess-int.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/trk-chernomorskaya.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/otv-dnepr.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/pershiy-zachidniy.webp">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-zakarpattia.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-krim.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ujnaya-volna-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-donbas.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tv-dom.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-chernigiv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/d1.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-ternopil.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-charkiv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-cherkasy.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-volin.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-mikolaiv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-bukovina.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-zaporijjia.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-sumy.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-rivne.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-poltava.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-odesa.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-lviv.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-kropivnickiy.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/centralniy-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/11-kanal-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/poltavske-tv-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ptrk-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/tv-4.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/donetchina-tv.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/telekanal-z.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/dnipro-tv-hd.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="/images/television/channels/cherniveckiy-promin-hd.webp"></div>
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/33-kanal.webp"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-5@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="/images/television/channels/ua-jitomir-hd.webp"></div>
                          </div>
                        </div>
                      </div>
                    </div>

                  </div>
                </dd>
              </div>
            </li>
          </ul>
        </dl>
      </div>
    </li>
    <li><a style=" margin-left: -30px; " class="uk-accordion-title" href="#"><h2 class="uk-margin-remove text-underline">
      OLL TV</h2></a>
      <div class="uk-accordion-content">
        <dl class="uk-description-list uk-description-list-divider">
          <dt>Стоимость подключения</dt>
          <dd class="uk-margin-small-top">1. Базовый комплект: приставка + настройка <span class="red-color">|</span>
            Цена: <span class="red-color">от 2000 грн.</span></dd>
        </dl>
        <dl class="uk-description-list uk-description-list-divider">
          <div class="plans">
            <dt>Тарифные планы OLL TV</dt>
            <dd class="uk-margin-small-top"><i class="fas fa-list"></i> Тарифный план: Старт <span
              class="red-color">|</span> Цена: 80 грн./мес
            </dd>
            <dd class="uk-margin-small-top"><i class="fas fa-list"></i> Тарифный план: Оптимум <span
              class="red-color">|</span> Цена: 109 грн./мес
            </dd>
            <dd class="uk-margin-small-top"><i class="fas fa-list"></i> Тарифный план: Премиум <span
              class="red-color">|</span> Цена: 239 грн./мес
            </dd>
            <dd class="uk-margin-small-top"><i class="fas fa-list"></i> Тарифный план: Футбол <span
              class="red-color">|</span> Цена: 109 грн./мес
            </dd>
            <dd class="uk-margin-small-top"><i class="fas fa-list"></i> Тарифный план: Суперспорт <span class="red-color">|</span>
              Цена: 139 грн./мес
            </dd>
            <dd class="uk-margin-small-top"><i class="fas fa-list"></i> Тарифный план: Футбол + Оптимум <span
              class="red-color">|</span> Цена: 159 грн./мес
            </dd>
            <dd class="uk-margin-small-top"><i class="fas fa-list"></i> Тарифный план: МегаХит <span
              class="red-color">|</span> Цена: 79 грн./мес
            </dd>
            <dd class="uk-margin-small-top"><i class="fas fa-list"></i> Тарифный план: Киноман <span
              class="red-color">|</span> Цена: 49 грн./мес
            </dd>
            <dd class="uk-margin-small-top"><i class="fas fa-list"></i> Тарифный план: Амедиатека <span class="red-color">|</span>
              Цена: 109 грн./мес
            </dd>
          </div>
        </dl>
        <dl class="uk-description-list uk-description-list-divider channel-list">
          <ul uk-accordion>
            <li>
              <a class="uk-accordion-title" href="#">
                <dt><i class="fas fa-tv"></i> Список каналов тарифного плана "Старт"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">


                  <div uk-grid class="uk-grid-small">

                    <!--Познавательные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Познавательные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/36/07/44/360744_most-video-537x295-.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/4c/14/a5/4c14a5_port-mone-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/8b/5c/e2/8b5ce2537x295-nobeltv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/6c/18/9b/6c189b537x295-travel-guide-tv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/17/1e/41/171e41_perviy-avtomobilnuy.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/87/30/ee/8730ee537x295-rubalkatv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/61/8f/21/618f21_trofey.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/24/7c/1c/247c1c537x295-ua-kultura.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/6f/6b/c1/6f6bc1_eko-tv.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/53/75/a7/5375a7_mega.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/69/0c/2d/690c2d_english-club-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/6e/83/97/6e8397537x295-36-6-tv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/3b/a2/37/3ba237_boutiquetv.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/4f/25/23/4f2523_televsesvit-537x295-.png"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Познавательные-->

                    <!--Музыкальные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Музыкальные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/94/73/cf/9473cf_nashe-music-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/18/db/fc/18dbfc537x295-etno-channel-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s3.ollcdn.net/i/2d/8e/6f/2d8e6fm1-537295.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s3.ollcdn.net/i/2e/2a/c6/2e2ac6537x295-m2.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/6f/5c/7c/6f5c7c537x295-4never-music.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/85/f5/7c/85f57c_musicbox.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/5f/ee/8c/5fee8c537x295-music-box-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/1c/03/2c/1c032c_537x295-eu-music.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/60/bf/10/60bf10_537x295-eu-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/43/ec/4f/43ec4f537x295-nash-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/28/05/3c/28053c537x295-nash.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/88/09/a5/8809a5_otv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/88/5d/18/885d18_537x295-zoom.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Музыкальные-->

                    <!--Региональные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Региональные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/7d/a2/9b/7da29b_537x295-tv-5.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/3f/1b/a2/3f1ba2aleks-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/88/58/d8/8858d8zentralniy-tv-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s5.ollcdn.net/i/11/ac/eb/11aceb537x295.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/53/fd/36/53fd36537x295-donetchina-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/7a/d5/55/7ad555537x295-nta.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/3c/8f/05/3c8f05537x295-ua-donbas.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/77/37/f5/7737f5_537x295-juzhnaia-volna.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/2b/c6/f4/2bc6f4537x295-krug.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/74/e4/c1/74e4c1537x295-g-news.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/8a/26/67/8a2667537x295-1kievski.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/5a/ab/38/5aab38_ck1-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/2d/1f/84/2d1f84537x295-trk-rai.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/80/49/e7/8049e7537x295-pravda-tut-lviv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/93/eb/ea/93ebea_537x295-prshiy-zahidniy.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/18/7e/8b/187e8b537x295-otv-dnipro.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Региональные-->

                    <!--Развлекательные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Развлекательные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/29/06/cb/2906cb537x295-id-fashion.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/79/3e/0b/793e0b537x295-nash-kanal.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/30/82/2f/30822f537x295bambarbia-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/82/e1/82/82e182537x295-nlo-tv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/54/aa/c4/54aac4_bigudi.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/6b/52/7d/6b527d537x295-kuskus.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s5.ollcdn.net/i/4b/17/38/4b1738537x295-oce.png">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/4c/a8/ff/4ca8ff_537x295-kvartal-tv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/25/f9/f0/25f9f0_fashiontv.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/8e/7d/9e/8e7d9e537x295-hd-fashion-lifestyle.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/91/c1/ea/91c1ea537x295-milady-tv.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/71/0b/10/710b10537x295-8-channel.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/52/67/e6/5267e6537x295-natali.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/72/e3/4d/72e34d537x295-karavan-tv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s0.ollcdn.net/i/62/9b/7c/629b7c537x295-22.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/11/a5/09/11a509_537x295-k1.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/3a/57/1a/3a571ak2-537295.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/42/70/f0/4270f0sonce-537295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/37/72/e3/3772e3_537x295-chernomorskaiatrk.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/80/b7/43/80b743_537x295-vintagetv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/82/d2/6b/82d26b_537x295-odessa-int.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Развлекательные-->

                    <!--Информационные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Информационные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/31/8a/cf/318acf537x295-tak-tv.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/69/58/1c/69581c537x295-uin.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/7e/09/68/7e0968537x295-otp-haluchuna.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/13/59/27/135927537x295-33-kanal.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/90/0c/9c/900c9c537x295-eksklyziv.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s4.ollcdn.net/i/59/82/ae/5982ae537x295-tv7.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/92/bf/d0/92bfd0537x295-trk-rudana.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/7b/78/f1/7b78f1537x295-trk-chernivci.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/7e/d8/b7/7ed8b7537x295-chernivetskiy-promin.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/45/9c/d1/459cd1537x295-sirius.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/7b/d5/08/7bd508537x295-deutsche-welle.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/15/28/9a/15289a537x295-vidikon.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/5d/bf/0b/5dbf0b537x295-chp-info.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/41/9e/58/419e58537x295-tva.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/63/eb/f7/63ebf7_112-ukraine.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/18/2d/e3/182de3_112-ukraine-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/88/d8/25/88d825537x295ua-krym.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/3c/e5/22/3ce522_537x295-espresotv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/7d/ef/82/7def82_537x295-espresotv-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/29/58/54/295854_hromadske-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/17/8f/76/178f76537x295-hromadske-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/74/d4/da/74d4da_537x295-24-kanal.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/47/48/c1/4748c1_537x295-ua.png">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/4f/26/a4/4f26a4537x295-24-channel-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/6e/5e/c1/6e5ec1537x295-priamij.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/16/69/59/166959_unian-canal.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/79/64/aa/7964aa537x295-priamij-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/3b/da/d4/3bdad4537x295-kbs.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/45/e7/59/45e759cgtv-537x295.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/67/d7/36/67d736537x295-deutsche-welle.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/22/47/d8/2247d8nastoyashchee-vremya-537x295.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/11/ed/35/11ed35_france-24.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/48/40/18/484018537x295-copy-france-24-fr.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/93/a5/36/93a536537x295-france-24-ar.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s4.ollcdn.net/i/8a/2e/28/8a2e28_537x295.png">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/18/4a/d9/184ad9537x295-zik.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/59/3f/10/593f10537x295-zik-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/56/6f/66/566f66_537x295-newsone.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/21/2a/4b/212a4b537x295-newsonehd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/76/01/d8/7601d8537x295-nashtv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/23/48/81/234881537x295-oboz-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/20/73/c5/2073c5537x295-oboz-tv-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/12/52/e9/1252e9perviy-delovoy-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/16/5f/53/165f53_pravda-tut-537x295-.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/45/45/91/454591537x295-4-kanal.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s8.ollcdn.net/i/1c/29/70/1c2970_rada.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/82/51/db/8251db537x295-rabinovich-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/88/57/7a/88577a537x295-reporter.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/33/9e/c8/339ec8537x295-telekanal-z.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/39/7a/68/397a68537x295-gtv.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/5f/6d/90/5f6d90_537x295-hersonplus.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/4e/84/1a/4e841a537x295-rivne-1.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/3e/a2/47/3ea247_pershij-kozackij-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/45/81/ad/4581ad537x295-pervij-gorodskoj-odessa-hd.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Информационные-->

                    <!--Детские-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Детские</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/41/3a/11/413a11piksel.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/28/ca/90/28ca90537x295-plusplus.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/98/6b/18/986b18537x295-niki-junior.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/74/65/38/746538537x295-niki-kids.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/91/7b/16/917b16_537x295-lale.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/14/ee/c1/14eec1maliatko.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/32/94/fb/3294fb537x295-nashkids.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Детские-->

                    <!--Семейные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Семейные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/7a/d3/17/7ad3177aa8f4537x295-ukraina-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/68/27/70/682770537x295-1-1-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/1d/e4/b4/1de4b4_inter.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s8.ollcdn.net/i/4f/e6/d5/4fe6d5_stb.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/1d/1e/7c/1d1e7c537x295-ictv.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s0.ollcdn.net/i/47/26/84/472684_novy.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s5.ollcdn.net/i/4f/b7/87/4fb787537x295-tet.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s0.ollcdn.net/i/34/31/11/343111_ntn.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/79/35/59/793559_ua-perhi-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/85/aa/0d/85aa0d537x295-telekompania-kiyv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/80/ca/e3/80cae3537x295-uakiev.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/76/c1/5c/76c15c_537x295-atr.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/8e/e5/1d/8ee51d537x295-navigatortv.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Семейные-->

                    <!--Спортивные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Спортивные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/1a/70/26/1a7026537x295-xsport.png"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Спортивные-->

                    <!--Кино-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Кино</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/1a/a9/7f/1aa97fstar-family-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/7d/cc/27/7dcc27537x295-star-cinema-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s4.ollcdn.net/i/1d/22/ec/1d22ec_enter-film.jpg">
                            </div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Кино-->

                    <!--Кинозалы OLL.TV-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Кинозалы OLL.TV</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/21/a2/7d/21a27d_865x483-detyam.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/64/e7/ef/64e7ef_865x483-komedia.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/58/06/bc/5806bc_537x295-boevik.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/37/22/f0/3722f0_865x483-melodrama-filmy.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/50/c8/81/50c881_865x483-ujasy.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Кинозалы OLL.TV-->

                  </div>


                </dd>
              </div>
            </li>
            <li>
              <a class="uk-accordion-title" href="#">
                <dt><i class="fas fa-tv"></i> Список каналов тарифного плана "Оптимум"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">


                  <div uk-grid class="uk-grid-small">

                    <!--Познавательные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Познавательные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/36/07/44/360744_most-video-537x295-.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/4c/14/a5/4c14a5_port-mone-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/8b/5c/e2/8b5ce2537x295-nobeltv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/6c/18/9b/6c189b537x295-travel-guide-tv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/17/1e/41/171e41_perviy-avtomobilnuy.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/87/30/ee/8730ee537x295-rubalkatv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/61/8f/21/618f21_trofey.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/24/7c/1c/247c1c537x295-ua-kultura.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/6f/6b/c1/6f6bc1_eko-tv.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/53/75/a7/5375a7_mega.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/69/0c/2d/690c2d_english-club-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/6e/83/97/6e8397537x295-36-6-tv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/3b/a2/37/3ba237_boutiquetv.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/4f/25/23/4f2523_televsesvit-537x295-.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/52/9d/0e/529d0e537x295-1-avtomobilnyj-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/66/f0/8a/66f08a_537x295-fauna.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/56/19/3b/56193b_537x295-terra.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/11/65/12/116512_537x295-nauka.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/6a/8b/84/6a8b84537x295-epoque.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/86/72/0d/86720d_english-club-tv-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/74/f7/05/74f705537x295-national-geographic.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/5b/a0/71/5ba071_history.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/44/ff/0a/44ff0a_viasat-explore.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/3a/83/42/3a8342_viasat-history.jpg"></div>
                          </div>
                        </div>
                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/7c/60/d1/7c60d1_viasat-nature.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/38/ab/35/38ab35_viasat-history-nature-hd.jpg"></div>
                          </div>
                        </div>
                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/53/d8/c4/53d8c4537x295travel-channel.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/10/53/2d/10532d537x295-da-vini.png"></div>
                          </div>
                        </div>
                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/46/e6/63/46e663_537x295-dacha.png"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Познавательные-->

                    <!--Музыкальные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Музыкальные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/94/73/cf/9473cf_nashe-music-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/18/db/fc/18dbfc537x295-etno-channel-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s3.ollcdn.net/i/2d/8e/6f/2d8e6fm1-537295.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s3.ollcdn.net/i/2e/2a/c6/2e2ac6537x295-m2.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/6f/5c/7c/6f5c7c537x295-4never-music.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/85/f5/7c/85f57c_musicbox.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/5f/ee/8c/5fee8c537x295-music-box-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/1c/03/2c/1c032c_537x295-eu-music.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/60/bf/10/60bf10_537x295-eu-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/43/ec/4f/43ec4f537x295-nash-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/28/05/3c/28053c537x295-nash.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/88/09/a5/8809a5_otv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/88/5d/18/885d18_537x295-zoom.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/26/de/38/26de38537x295-4never-music-hd.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Музыкальные-->

                    <!--Региональные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Региональные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/7d/a2/9b/7da29b_537x295-tv-5.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/3f/1b/a2/3f1ba2aleks-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/88/58/d8/8858d8zentralniy-tv-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s5.ollcdn.net/i/11/ac/eb/11aceb537x295.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/53/fd/36/53fd36537x295-donetchina-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/7a/d5/55/7ad555537x295-nta.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/3c/8f/05/3c8f05537x295-ua-donbas.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/77/37/f5/7737f5_537x295-juzhnaia-volna.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/2b/c6/f4/2bc6f4537x295-krug.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/74/e4/c1/74e4c1537x295-g-news.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/8a/26/67/8a2667537x295-1kievski.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/5a/ab/38/5aab38_ck1-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/2d/1f/84/2d1f84537x295-trk-rai.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/80/49/e7/8049e7537x295-pravda-tut-lviv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/93/eb/ea/93ebea_537x295-prshiy-zahidniy.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/18/7e/8b/187e8b537x295-otv-dnipro.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Региональные-->

                    <!--Развлекательные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Развлекательные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/29/06/cb/2906cb537x295-id-fashion.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/79/3e/0b/793e0b537x295-nash-kanal.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/30/82/2f/30822f537x295bambarbia-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/82/e1/82/82e182537x295-nlo-tv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/54/aa/c4/54aac4_bigudi.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/6b/52/7d/6b527d537x295-kuskus.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s5.ollcdn.net/i/4b/17/38/4b1738537x295-oce.png">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/4c/a8/ff/4ca8ff_537x295-kvartal-tv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/25/f9/f0/25f9f0_fashiontv.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/8e/7d/9e/8e7d9e537x295-hd-fashion-lifestyle.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/91/c1/ea/91c1ea537x295-milady-tv.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/71/0b/10/710b10537x295-8-channel.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/52/67/e6/5267e6537x295-natali.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/72/e3/4d/72e34d537x295-karavan-tv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s0.ollcdn.net/i/62/9b/7c/629b7c537x295-22.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/11/a5/09/11a509_537x295-k1.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/3a/57/1a/3a571ak2-537295.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/42/70/f0/4270f0sonce-537295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/37/72/e3/3772e3_537x295-chernomorskaiatrk.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/80/b7/43/80b743_537x295-vintagetv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/82/d2/6b/82d26b_537x295-odessa-int.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/96/96/13/969613537x295-id-fashion-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/66/c2/9f/66c29f537x295food-network-new.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/56/4d/28/564d28537x295-fine-living.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Развлекательные-->

                    <!--Информационные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Информационные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/31/8a/cf/318acf537x295-tak-tv.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/69/58/1c/69581c537x295-uin.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/7e/09/68/7e0968537x295-otp-haluchuna.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/13/59/27/135927537x295-33-kanal.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/90/0c/9c/900c9c537x295-eksklyziv.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s4.ollcdn.net/i/59/82/ae/5982ae537x295-tv7.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/92/bf/d0/92bfd0537x295-trk-rudana.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/7b/78/f1/7b78f1537x295-trk-chernivci.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/7e/d8/b7/7ed8b7537x295-chernivetskiy-promin.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/45/9c/d1/459cd1537x295-sirius.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/7b/d5/08/7bd508537x295-deutsche-welle.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/15/28/9a/15289a537x295-vidikon.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/5d/bf/0b/5dbf0b537x295-chp-info.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/41/9e/58/419e58537x295-tva.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/63/eb/f7/63ebf7_112-ukraine.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/18/2d/e3/182de3_112-ukraine-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/88/d8/25/88d825537x295ua-krym.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/3c/e5/22/3ce522_537x295-espresotv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/7d/ef/82/7def82_537x295-espresotv-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/29/58/54/295854_hromadske-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/17/8f/76/178f76537x295-hromadske-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/74/d4/da/74d4da_537x295-24-kanal.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/47/48/c1/4748c1_537x295-ua.png">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/4f/26/a4/4f26a4537x295-24-channel-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/6e/5e/c1/6e5ec1537x295-priamij.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/16/69/59/166959_unian-canal.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/79/64/aa/7964aa537x295-priamij-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/3b/da/d4/3bdad4537x295-kbs.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/45/e7/59/45e759cgtv-537x295.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/67/d7/36/67d736537x295-deutsche-welle.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/22/47/d8/2247d8nastoyashchee-vremya-537x295.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/11/ed/35/11ed35_france-24.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/48/40/18/484018537x295-copy-france-24-fr.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/93/a5/36/93a536537x295-france-24-ar.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s4.ollcdn.net/i/8a/2e/28/8a2e28_537x295.png">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/18/4a/d9/184ad9537x295-zik.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/59/3f/10/593f10537x295-zik-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/56/6f/66/566f66_537x295-newsone.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/21/2a/4b/212a4b537x295-newsonehd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/76/01/d8/7601d8537x295-nashtv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/23/48/81/234881537x295-oboz-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/20/73/c5/2073c5537x295-oboz-tv-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/12/52/e9/1252e9perviy-delovoy-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/16/5f/53/165f53_pravda-tut-537x295-.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/45/45/91/454591537x295-4-kanal.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s8.ollcdn.net/i/1c/29/70/1c2970_rada.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/82/51/db/8251db537x295-rabinovich-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/88/57/7a/88577a537x295-reporter.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/33/9e/c8/339ec8537x295-telekanal-z.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/39/7a/68/397a68537x295-gtv.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/5f/6d/90/5f6d90_537x295-hersonplus.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/4e/84/1a/4e841a537x295-rivne-1.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/3e/a2/47/3ea247_pershij-kozackij-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/45/81/ad/4581ad537x295-pervij-gorodskoj-odessa-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/56/13/d1/5613d1537x295-euronews.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/1e/3a/81/1e3a81537x295-kbs-hd.png"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Информационные-->

                    <!--Детские-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Детские</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/41/3a/11/413a11piksel.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/28/ca/90/28ca90537x295-plusplus.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/98/6b/18/986b18537x295-niki-junior.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/74/65/38/746538537x295-niki-kids.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/91/7b/16/917b16_537x295-lale.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/14/ee/c1/14eec1maliatko.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/32/94/fb/3294fb537x295-nashkids.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/31/51/f6/3151f6_nickelodeon.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/3b/95/4b/3b954b537x295-cartoon-network.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/2a/0b/64/2a0b64537x295-niki-junior-hd.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/3e/a9/73/3ea973537x295-niki-kids-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/65/c9/5f/65c95f537x295-nashkids-hd.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Детские-->

                    <!--Семейные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Семейные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/7a/d3/17/7ad3177aa8f4537x295-ukraina-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/68/27/70/682770537x295-1-1-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/1d/e4/b4/1de4b4_inter.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s8.ollcdn.net/i/4f/e6/d5/4fe6d5_stb.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/1d/1e/7c/1d1e7c537x295-ictv.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s0.ollcdn.net/i/47/26/84/472684_novy.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s5.ollcdn.net/i/4f/b7/87/4fb787537x295-tet.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s0.ollcdn.net/i/34/31/11/343111_ntn.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/79/35/59/793559_ua-perhi-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/85/aa/0d/85aa0d537x295-telekompania-kiyv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/80/ca/e3/80cae3537x295-uakiev.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/76/c1/5c/76c15c_537x295-atr.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/8e/e5/1d/8ee51d537x295-navigatortv.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Семейные-->

                    <!--Спортивные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Спортивные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/1a/70/26/1a7026537x295-xsport.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/29/85/0a/29850a_viasat-sport.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/24/f4/11/24f411537kh295-selantasports.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Спортивные-->

                    <!--Кино-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Кино</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/1a/a9/7f/1aa97fstar-family-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/7d/cc/27/7dcc27537x295-star-cinema-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s4.ollcdn.net/i/1d/22/ec/1d22ec_enter-film.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s8.ollcdn.net/i/91/fd/fb/91fdfbfox-537x295.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/7e/38/3c/7e383c537x295-viasat-epic-drama.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s6.ollcdn.net/i/24/d9/2e/24d92e_tv1000.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/75/3b/40/753b40_tv1000-action.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/14/ed/45/14ed45537x295-vip-comedy.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/1b/58/5f/1b585f537x295-world-kino.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/2f/12/ee/2f12ee537x295-sony-sci-fi.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/73/d2/a2/73d2a2537x295-sony-entertainment.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/1c/2e/05/1c2e05537x295-sony-turbo.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/94/52/7a/94527a537x295-paramount-comedy.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/2b/ca/3f/2bca3f_537x295-eurokino.png"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Кино-->

                    <!--Кинозалы OLL.TV-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Кинозалы OLL.TV</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/21/a2/7d/21a27d_865x483-detyam.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/64/e7/ef/64e7ef_865x483-komedia.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/58/06/bc/5806bc_537x295-boevik.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/37/22/f0/3722f0_865x483-melodrama-filmy.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/50/c8/81/50c881_865x483-ujasy.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Кинозалы OLL.TV-->

                  </div>


                </dd>
              </div>
            </li>
            <li>
              <a class="uk-accordion-title" href="#">
                <dt><i class="fas fa-tv"></i> Список каналов тарифного плана "Премиум"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">


                  <div uk-grid class="uk-grid-small">

                    <!--Познавательные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Познавательные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/36/07/44/360744_most-video-537x295-.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/4c/14/a5/4c14a5_port-mone-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/8b/5c/e2/8b5ce2537x295-nobeltv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/6c/18/9b/6c189b537x295-travel-guide-tv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/17/1e/41/171e41_perviy-avtomobilnuy.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/87/30/ee/8730ee537x295-rubalkatv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/61/8f/21/618f21_trofey.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/24/7c/1c/247c1c537x295-ua-kultura.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/6f/6b/c1/6f6bc1_eko-tv.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/53/75/a7/5375a7_mega.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/69/0c/2d/690c2d_english-club-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/6e/83/97/6e8397537x295-36-6-tv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/3b/a2/37/3ba237_boutiquetv.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/4f/25/23/4f2523_televsesvit-537x295-.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/52/9d/0e/529d0e537x295-1-avtomobilnyj-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/66/f0/8a/66f08a_537x295-fauna.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/56/19/3b/56193b_537x295-terra.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/11/65/12/116512_537x295-nauka.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/6a/8b/84/6a8b84537x295-epoque.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/86/72/0d/86720d_english-club-tv-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/74/f7/05/74f705537x295-national-geographic.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/5b/a0/71/5ba071_history.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/44/ff/0a/44ff0a_viasat-explore.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/3a/83/42/3a8342_viasat-history.jpg"></div>
                          </div>
                        </div>
                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/7c/60/d1/7c60d1_viasat-nature.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/38/ab/35/38ab35_viasat-history-nature-hd.jpg"></div>
                          </div>
                        </div>
                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/53/d8/c4/53d8c4537x295travel-channel.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/10/53/2d/10532d537x295-da-vini.png"></div>
                          </div>
                        </div>
                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/46/e6/63/46e663_537x295-dacha.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/16/ca/ca/16caca_trofeyhd.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/17/91/0a/17910anat-geo-wild-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/18/0c/3f/180c3f_history-hd.jpg">
                            </div>
                          </div>
                        </div>
                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/5f/90/a9/5f90a9537x295travel-channel-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/85/2d/3d/852d3d_537x295-dacha-hd.png"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Познавательные-->

                    <!--Музыкальные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Музыкальные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/94/73/cf/9473cf_nashe-music-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/18/db/fc/18dbfc537x295-etno-channel-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s3.ollcdn.net/i/2d/8e/6f/2d8e6fm1-537295.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s3.ollcdn.net/i/2e/2a/c6/2e2ac6537x295-m2.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/6f/5c/7c/6f5c7c537x295-4never-music.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/85/f5/7c/85f57c_musicbox.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/5f/ee/8c/5fee8c537x295-music-box-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/1c/03/2c/1c032c_537x295-eu-music.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/60/bf/10/60bf10_537x295-eu-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/43/ec/4f/43ec4f537x295-nash-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/28/05/3c/28053c537x295-nash.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/88/09/a5/8809a5_otv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/88/5d/18/885d18_537x295-zoom.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/26/de/38/26de38537x295-4never-music-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s4.ollcdn.net/i/46/cf/85/46cf85_mtv-hits.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s5.ollcdn.net/i/22/d4/85/22d485_mtv-dance.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/72/10/13/721013_mtv-rocks.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/5f/1b/ee/5f1bee_vh1-537x295-.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/61/dc/5c/61dc5c_537x295-vh1-classic.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Музыкальные-->

                    <!--Региональные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Региональные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/7d/a2/9b/7da29b_537x295-tv-5.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/3f/1b/a2/3f1ba2aleks-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/88/58/d8/8858d8zentralniy-tv-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s5.ollcdn.net/i/11/ac/eb/11aceb537x295.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/53/fd/36/53fd36537x295-donetchina-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/7a/d5/55/7ad555537x295-nta.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/3c/8f/05/3c8f05537x295-ua-donbas.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/77/37/f5/7737f5_537x295-juzhnaia-volna.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/2b/c6/f4/2bc6f4537x295-krug.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/74/e4/c1/74e4c1537x295-g-news.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/8a/26/67/8a2667537x295-1kievski.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/5a/ab/38/5aab38_ck1-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/2d/1f/84/2d1f84537x295-trk-rai.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/80/49/e7/8049e7537x295-pravda-tut-lviv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/93/eb/ea/93ebea_537x295-prshiy-zahidniy.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/18/7e/8b/187e8b537x295-otv-dnipro.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Региональные-->

                    <!--Развлекательные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Развлекательные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/29/06/cb/2906cb537x295-id-fashion.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/79/3e/0b/793e0b537x295-nash-kanal.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/30/82/2f/30822f537x295bambarbia-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/82/e1/82/82e182537x295-nlo-tv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/54/aa/c4/54aac4_bigudi.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/6b/52/7d/6b527d537x295-kuskus.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s5.ollcdn.net/i/4b/17/38/4b1738537x295-oce.png">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/4c/a8/ff/4ca8ff_537x295-kvartal-tv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/25/f9/f0/25f9f0_fashiontv.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/8e/7d/9e/8e7d9e537x295-hd-fashion-lifestyle.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/91/c1/ea/91c1ea537x295-milady-tv.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/71/0b/10/710b10537x295-8-channel.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/52/67/e6/5267e6537x295-natali.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/72/e3/4d/72e34d537x295-karavan-tv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s0.ollcdn.net/i/62/9b/7c/629b7c537x295-22.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/11/a5/09/11a509_537x295-k1.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/3a/57/1a/3a571ak2-537295.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/42/70/f0/4270f0sonce-537295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/37/72/e3/3772e3_537x295-chernomorskaiatrk.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/80/b7/43/80b743_537x295-vintagetv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/82/d2/6b/82d26b_537x295-odessa-int.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/96/96/13/969613537x295-id-fashion-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/66/c2/9f/66c29f537x295food-network-new.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/56/4d/28/564d28537x295-fine-living.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/1c/5b/a1/1c5ba1537x295-food-network-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/19/ae/35/19ae35537x295-copyfine-living-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/26/b0/dd/26b0dd_fashionhd.jpg">
                            </div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Развлекательные-->

                    <!--Информационные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Информационные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/31/8a/cf/318acf537x295-tak-tv.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/69/58/1c/69581c537x295-uin.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/7e/09/68/7e0968537x295-otp-haluchuna.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/13/59/27/135927537x295-33-kanal.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/90/0c/9c/900c9c537x295-eksklyziv.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s4.ollcdn.net/i/59/82/ae/5982ae537x295-tv7.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/92/bf/d0/92bfd0537x295-trk-rudana.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/7b/78/f1/7b78f1537x295-trk-chernivci.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/7e/d8/b7/7ed8b7537x295-chernivetskiy-promin.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/45/9c/d1/459cd1537x295-sirius.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/7b/d5/08/7bd508537x295-deutsche-welle.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/15/28/9a/15289a537x295-vidikon.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/5d/bf/0b/5dbf0b537x295-chp-info.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/41/9e/58/419e58537x295-tva.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/63/eb/f7/63ebf7_112-ukraine.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/18/2d/e3/182de3_112-ukraine-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/88/d8/25/88d825537x295ua-krym.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/3c/e5/22/3ce522_537x295-espresotv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/7d/ef/82/7def82_537x295-espresotv-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/29/58/54/295854_hromadske-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/17/8f/76/178f76537x295-hromadske-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/74/d4/da/74d4da_537x295-24-kanal.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/47/48/c1/4748c1_537x295-ua.png">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/4f/26/a4/4f26a4537x295-24-channel-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/6e/5e/c1/6e5ec1537x295-priamij.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/16/69/59/166959_unian-canal.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/79/64/aa/7964aa537x295-priamij-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/3b/da/d4/3bdad4537x295-kbs.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/45/e7/59/45e759cgtv-537x295.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/67/d7/36/67d736537x295-deutsche-welle.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/22/47/d8/2247d8nastoyashchee-vremya-537x295.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/11/ed/35/11ed35_france-24.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/48/40/18/484018537x295-copy-france-24-fr.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/93/a5/36/93a536537x295-france-24-ar.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s4.ollcdn.net/i/8a/2e/28/8a2e28_537x295.png">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/18/4a/d9/184ad9537x295-zik.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/59/3f/10/593f10537x295-zik-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/56/6f/66/566f66_537x295-newsone.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/21/2a/4b/212a4b537x295-newsonehd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/76/01/d8/7601d8537x295-nashtv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/23/48/81/234881537x295-oboz-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/20/73/c5/2073c5537x295-oboz-tv-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/12/52/e9/1252e9perviy-delovoy-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/16/5f/53/165f53_pravda-tut-537x295-.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/45/45/91/454591537x295-4-kanal.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s8.ollcdn.net/i/1c/29/70/1c2970_rada.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/82/51/db/8251db537x295-rabinovich-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/88/57/7a/88577a537x295-reporter.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/33/9e/c8/339ec8537x295-telekanal-z.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/39/7a/68/397a68537x295-gtv.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/5f/6d/90/5f6d90_537x295-hersonplus.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/4e/84/1a/4e841a537x295-rivne-1.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/3e/a2/47/3ea247_pershij-kozackij-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/45/81/ad/4581ad537x295-pervij-gorodskoj-odessa-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/56/13/d1/5613d1537x295-euronews.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/1e/3a/81/1e3a81537x295-kbs-hd.png"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Информационные-->

                    <!--Детские-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Детские</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/41/3a/11/413a11piksel.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/28/ca/90/28ca90537x295-plusplus.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/98/6b/18/986b18537x295-niki-junior.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/74/65/38/746538537x295-niki-kids.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/91/7b/16/917b16_537x295-lale.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/14/ee/c1/14eec1maliatko.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/32/94/fb/3294fb537x295-nashkids.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/31/51/f6/3151f6_nickelodeon.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/3b/95/4b/3b954b537x295-cartoon-network.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/2a/0b/64/2a0b64537x295-niki-junior-hd.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/3e/a9/73/3ea973537x295-niki-kids-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/65/c9/5f/65c95f537x295-nashkids-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s3.ollcdn.net/i/5e/fe/3e/5efe3e_nick-jr.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/4f/20/fb/4f20fb537x295-baby-tv.png"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Детские-->

                    <!--Семейные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Семейные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/7a/d3/17/7ad3177aa8f4537x295-ukraina-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/68/27/70/682770537x295-1-1-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/1d/e4/b4/1de4b4_inter.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s8.ollcdn.net/i/4f/e6/d5/4fe6d5_stb.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/1d/1e/7c/1d1e7c537x295-ictv.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s0.ollcdn.net/i/47/26/84/472684_novy.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s5.ollcdn.net/i/4f/b7/87/4fb787537x295-tet.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s0.ollcdn.net/i/34/31/11/343111_ntn.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/79/35/59/793559_ua-perhi-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/85/aa/0d/85aa0d537x295-telekompania-kiyv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/80/ca/e3/80cae3537x295-uakiev.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/76/c1/5c/76c15c_537x295-atr.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/8e/e5/1d/8ee51d537x295-navigatortv.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Семейные-->

                    <!--Спортивные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Спортивные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/1a/70/26/1a7026537x295-xsport.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/29/85/0a/29850a_viasat-sport.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/24/f4/11/24f411537kh295-selantasports.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/6b/31/78/6b3178_viasat-sport-hd.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Спортивные-->

                    <!--Кино-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Кино</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/1a/a9/7f/1aa97fstar-family-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/7d/cc/27/7dcc27537x295-star-cinema-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s4.ollcdn.net/i/1d/22/ec/1d22ec_enter-film.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s8.ollcdn.net/i/91/fd/fb/91fdfbfox-537x295.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/7e/38/3c/7e383c537x295-viasat-epic-drama.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s6.ollcdn.net/i/24/d9/2e/24d92e_tv1000.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/75/3b/40/753b40_tv1000-action.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/14/ed/45/14ed45537x295-vip-comedy.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/1b/58/5f/1b585f537x295-world-kino.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/2f/12/ee/2f12ee537x295-sony-sci-fi.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/73/d2/a2/73d2a2537x295-sony-entertainment.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/1c/2e/05/1c2e05537x295-sony-turbo.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/94/52/7a/94527a537x295-paramount-comedy.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/2b/ca/3f/2bca3f_537x295-eurokino.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/2b/cd/65/2bcd65537x295-vip-premiere-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/73/ff/59/73ff59537x295-hd-vip-megahit-hd.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/39/1f/b7/391fb7537x295-fox-life.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/4e/64/97/4e6497537x295-hd-comedyhd.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Кино-->

                    <!--Кинозалы OLL.TV-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Кинозалы OLL.TV</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/21/a2/7d/21a27d_865x483-detyam.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/64/e7/ef/64e7ef_865x483-komedia.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/58/06/bc/5806bc_537x295-boevik.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/37/22/f0/3722f0_865x483-melodrama-filmy.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/50/c8/81/50c881_865x483-ujasy.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Кинозалы OLL.TV-->

                  </div>


                </dd>
              </div>
            </li>
            <li>
              <a class="uk-accordion-title" href="#">
                <dt><i class="fas fa-tv"></i> Список каналов тарифного плана "Футбол"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">


                  <div uk-grid class="uk-grid-small">

                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Спортивные</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s4.ollcdn.net/i/4f/4f/a0/4f4fa0_futbol-1.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/36/a8/46/36a846_futbol-1-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s3.ollcdn.net/i/23/41/0b/23410b_futbol-2.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/67/f3/e4/67f3e4_futbol-2-hd.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                  </div>


                </dd>
              </div>
            </li>
            <li>
              <a class="uk-accordion-title" href="#">
                <dt><i class="fas fa-tv"></i> Список каналов тарифного плана "Суперспорт"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">

                  <div uk-grid class="uk-grid-small">

                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Спортивные</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-3@l">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://s9.ollcdn.net/i/24/f4/11/24f411537kh295-selantasports.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s4.ollcdn.net/i/4f/4f/a0/4f4fa0_futbol-1.jpg">
                            </div>
                          </div>
                        </div>
                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/36/a8/46/36a846_futbol-1-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s3.ollcdn.net/i/23/41/0b/23410b_futbol-2.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/67/f3/e4/67f3e4_futbol-2-hd.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                  </div>
                </dd>
              </div>
            </li>
            <li>
              <a class="uk-accordion-title" href="#">
                <dt><i class="fas fa-tv"></i> Список каналов тарифного плана "Футбол + Оптимум"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">


                  <div uk-grid class="uk-grid-small">

                    <!--Познавательные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Познавательные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/36/07/44/360744_most-video-537x295-.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/4c/14/a5/4c14a5_port-mone-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/8b/5c/e2/8b5ce2537x295-nobeltv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/6c/18/9b/6c189b537x295-travel-guide-tv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/17/1e/41/171e41_perviy-avtomobilnuy.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/87/30/ee/8730ee537x295-rubalkatv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/61/8f/21/618f21_trofey.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/24/7c/1c/247c1c537x295-ua-kultura.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/6f/6b/c1/6f6bc1_eko-tv.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/53/75/a7/5375a7_mega.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/69/0c/2d/690c2d_english-club-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/6e/83/97/6e8397537x295-36-6-tv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/3b/a2/37/3ba237_boutiquetv.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/4f/25/23/4f2523_televsesvit-537x295-.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/52/9d/0e/529d0e537x295-1-avtomobilnyj-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/66/f0/8a/66f08a_537x295-fauna.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/56/19/3b/56193b_537x295-terra.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/11/65/12/116512_537x295-nauka.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/6a/8b/84/6a8b84537x295-epoque.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/86/72/0d/86720d_english-club-tv-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/74/f7/05/74f705537x295-national-geographic.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/5b/a0/71/5ba071_history.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/44/ff/0a/44ff0a_viasat-explore.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/3a/83/42/3a8342_viasat-history.jpg"></div>
                          </div>
                        </div>
                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/7c/60/d1/7c60d1_viasat-nature.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/38/ab/35/38ab35_viasat-history-nature-hd.jpg"></div>
                          </div>
                        </div>
                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/53/d8/c4/53d8c4537x295travel-channel.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/10/53/2d/10532d537x295-da-vini.png"></div>
                          </div>
                        </div>
                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/46/e6/63/46e663_537x295-dacha.png"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Познавательные-->

                    <!--Музыкальные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Музыкальные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/94/73/cf/9473cf_nashe-music-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/18/db/fc/18dbfc537x295-etno-channel-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s3.ollcdn.net/i/2d/8e/6f/2d8e6fm1-537295.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s3.ollcdn.net/i/2e/2a/c6/2e2ac6537x295-m2.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/6f/5c/7c/6f5c7c537x295-4never-music.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/85/f5/7c/85f57c_musicbox.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/5f/ee/8c/5fee8c537x295-music-box-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/1c/03/2c/1c032c_537x295-eu-music.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/60/bf/10/60bf10_537x295-eu-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/43/ec/4f/43ec4f537x295-nash-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/28/05/3c/28053c537x295-nash.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/88/09/a5/8809a5_otv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/88/5d/18/885d18_537x295-zoom.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/26/de/38/26de38537x295-4never-music-hd.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Музыкальные-->

                    <!--Региональные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Региональные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/7d/a2/9b/7da29b_537x295-tv-5.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/3f/1b/a2/3f1ba2aleks-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/88/58/d8/8858d8zentralniy-tv-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s5.ollcdn.net/i/11/ac/eb/11aceb537x295.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/53/fd/36/53fd36537x295-donetchina-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/7a/d5/55/7ad555537x295-nta.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/3c/8f/05/3c8f05537x295-ua-donbas.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/77/37/f5/7737f5_537x295-juzhnaia-volna.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/2b/c6/f4/2bc6f4537x295-krug.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/74/e4/c1/74e4c1537x295-g-news.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/8a/26/67/8a2667537x295-1kievski.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/5a/ab/38/5aab38_ck1-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/2d/1f/84/2d1f84537x295-trk-rai.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/80/49/e7/8049e7537x295-pravda-tut-lviv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/93/eb/ea/93ebea_537x295-prshiy-zahidniy.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/18/7e/8b/187e8b537x295-otv-dnipro.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Региональные-->

                    <!--Развлекательные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Развлекательные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/29/06/cb/2906cb537x295-id-fashion.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/79/3e/0b/793e0b537x295-nash-kanal.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/30/82/2f/30822f537x295bambarbia-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/82/e1/82/82e182537x295-nlo-tv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/54/aa/c4/54aac4_bigudi.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/6b/52/7d/6b527d537x295-kuskus.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s5.ollcdn.net/i/4b/17/38/4b1738537x295-oce.png">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/4c/a8/ff/4ca8ff_537x295-kvartal-tv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/25/f9/f0/25f9f0_fashiontv.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/8e/7d/9e/8e7d9e537x295-hd-fashion-lifestyle.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/91/c1/ea/91c1ea537x295-milady-tv.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/71/0b/10/710b10537x295-8-channel.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/52/67/e6/5267e6537x295-natali.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/72/e3/4d/72e34d537x295-karavan-tv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s0.ollcdn.net/i/62/9b/7c/629b7c537x295-22.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/11/a5/09/11a509_537x295-k1.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/3a/57/1a/3a571ak2-537295.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/42/70/f0/4270f0sonce-537295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/37/72/e3/3772e3_537x295-chernomorskaiatrk.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/80/b7/43/80b743_537x295-vintagetv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/82/d2/6b/82d26b_537x295-odessa-int.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/96/96/13/969613537x295-id-fashion-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/66/c2/9f/66c29f537x295food-network-new.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/56/4d/28/564d28537x295-fine-living.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Развлекательные-->

                    <!--Информационные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Информационные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/31/8a/cf/318acf537x295-tak-tv.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/69/58/1c/69581c537x295-uin.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/7e/09/68/7e0968537x295-otp-haluchuna.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/13/59/27/135927537x295-33-kanal.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/90/0c/9c/900c9c537x295-eksklyziv.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s4.ollcdn.net/i/59/82/ae/5982ae537x295-tv7.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/92/bf/d0/92bfd0537x295-trk-rudana.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/7b/78/f1/7b78f1537x295-trk-chernivci.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/7e/d8/b7/7ed8b7537x295-chernivetskiy-promin.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/45/9c/d1/459cd1537x295-sirius.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/7b/d5/08/7bd508537x295-deutsche-welle.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/15/28/9a/15289a537x295-vidikon.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/5d/bf/0b/5dbf0b537x295-chp-info.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/41/9e/58/419e58537x295-tva.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/63/eb/f7/63ebf7_112-ukraine.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/18/2d/e3/182de3_112-ukraine-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/88/d8/25/88d825537x295ua-krym.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/3c/e5/22/3ce522_537x295-espresotv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/7d/ef/82/7def82_537x295-espresotv-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/29/58/54/295854_hromadske-537x295.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/17/8f/76/178f76537x295-hromadske-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/74/d4/da/74d4da_537x295-24-kanal.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/47/48/c1/4748c1_537x295-ua.png">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/4f/26/a4/4f26a4537x295-24-channel-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/6e/5e/c1/6e5ec1537x295-priamij.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/16/69/59/166959_unian-canal.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/79/64/aa/7964aa537x295-priamij-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/3b/da/d4/3bdad4537x295-kbs.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/45/e7/59/45e759cgtv-537x295.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/67/d7/36/67d736537x295-deutsche-welle.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/22/47/d8/2247d8nastoyashchee-vremya-537x295.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/11/ed/35/11ed35_france-24.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/48/40/18/484018537x295-copy-france-24-fr.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/93/a5/36/93a536537x295-france-24-ar.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s4.ollcdn.net/i/8a/2e/28/8a2e28_537x295.png">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s1.ollcdn.net/i/18/4a/d9/184ad9537x295-zik.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/59/3f/10/593f10537x295-zik-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/56/6f/66/566f66_537x295-newsone.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/21/2a/4b/212a4b537x295-newsonehd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/76/01/d8/7601d8537x295-nashtv.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/23/48/81/234881537x295-oboz-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/20/73/c5/2073c5537x295-oboz-tv-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/12/52/e9/1252e9perviy-delovoy-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/16/5f/53/165f53_pravda-tut-537x295-.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/45/45/91/454591537x295-4-kanal.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s8.ollcdn.net/i/1c/29/70/1c2970_rada.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/82/51/db/8251db537x295-rabinovich-tv.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/88/57/7a/88577a537x295-reporter.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/33/9e/c8/339ec8537x295-telekanal-z.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s2.ollcdn.net/i/39/7a/68/397a68537x295-gtv.png">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/5f/6d/90/5f6d90_537x295-hersonplus.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/4e/84/1a/4e841a537x295-rivne-1.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/3e/a2/47/3ea247_pershij-kozackij-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/45/81/ad/4581ad537x295-pervij-gorodskoj-odessa-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/56/13/d1/5613d1537x295-euronews.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/1e/3a/81/1e3a81537x295-kbs-hd.png"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Информационные-->

                    <!--Детские-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Детские</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/41/3a/11/413a11piksel.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/28/ca/90/28ca90537x295-plusplus.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/98/6b/18/986b18537x295-niki-junior.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/74/65/38/746538537x295-niki-kids.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/91/7b/16/917b16_537x295-lale.png"></div>
                            <div class="uk-width-1-2@l"><img src="https://s9.ollcdn.net/i/14/ee/c1/14eec1maliatko.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/32/94/fb/3294fb537x295-nashkids.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/31/51/f6/3151f6_nickelodeon.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/3b/95/4b/3b954b537x295-cartoon-network.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/2a/0b/64/2a0b64537x295-niki-junior-hd.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/3e/a9/73/3ea973537x295-niki-kids-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/65/c9/5f/65c95f537x295-nashkids-hd.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Детские-->

                    <!--Семейные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Семейные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/7a/d3/17/7ad3177aa8f4537x295-ukraina-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/68/27/70/682770537x295-1-1-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s7.ollcdn.net/i/1d/e4/b4/1de4b4_inter.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s8.ollcdn.net/i/4f/e6/d5/4fe6d5_stb.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/1d/1e/7c/1d1e7c537x295-ictv.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s0.ollcdn.net/i/47/26/84/472684_novy.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s5.ollcdn.net/i/4f/b7/87/4fb787537x295-tet.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s0.ollcdn.net/i/34/31/11/343111_ntn.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/79/35/59/793559_ua-perhi-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/85/aa/0d/85aa0d537x295-telekompania-kiyv.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/80/ca/e3/80cae3537x295-uakiev.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s4.ollcdn.net/i/76/c1/5c/76c15c_537x295-atr.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s5.ollcdn.net/i/8e/e5/1d/8ee51d537x295-navigatortv.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Семейные-->

                    <!--Спортивные-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Спортивные</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/1a/70/26/1a7026537x295-xsport.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/29/85/0a/29850a_viasat-sport.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/6b/31/78/6b3178_viasat-sport-hd.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/24/f4/11/24f411537kh295-selantasports.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://s4.ollcdn.net/i/4f/4f/a0/4f4fa0_futbol-1.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/36/a8/46/36a846_futbol-1-hd.jpg"></div>
                          </div>
                        </div>


                        <div class="uk-width-1-3@l">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://s3.ollcdn.net/i/23/41/0b/23410b_futbol-2.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/67/f3/e4/67f3e4_futbol-2-hd.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Спортивные-->

                    <!--Кино-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Кино</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/1a/a9/7f/1aa97fstar-family-537x295.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s9.ollcdn.net/i/7d/cc/27/7dcc27537x295-star-cinema-hd.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img src="https://s4.ollcdn.net/i/1d/22/ec/1d22ec_enter-film.jpg">
                            </div>
                            <div class="uk-width-1-2@l"><img src="https://s8.ollcdn.net/i/91/fd/fb/91fdfbfox-537x295.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/7e/38/3c/7e383c537x295-viasat-epic-drama.jpg"></div>
                            <div class="uk-width-1-2@l"><img src="https://s6.ollcdn.net/i/24/d9/2e/24d92e_tv1000.jpg">
                            </div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s3.ollcdn.net/i/75/3b/40/753b40_tv1000-action.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/14/ed/45/14ed45537x295-vip-comedy.png"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/1b/58/5f/1b585f537x295-world-kino.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/2f/12/ee/2f12ee537x295-sony-sci-fi.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s7.ollcdn.net/i/73/d2/a2/73d2a2537x295-sony-entertainment.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s2.ollcdn.net/i/1c/2e/05/1c2e05537x295-sony-turbo.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/94/52/7a/94527a537x295-paramount-comedy.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s6.ollcdn.net/i/2b/ca/3f/2bca3f_537x295-eurokino.png"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Кино-->

                    <!--Кинозалы OLL.TV-->
                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Кинозалы OLL.TV</span></h2>
                      <div uk-grid>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/21/a2/7d/21a27d_865x483-detyam.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/64/e7/ef/64e7ef_865x483-komedia.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/58/06/bc/5806bc_537x295-boevik.jpg"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s0.ollcdn.net/i/37/22/f0/3722f0_865x483-melodrama-filmy.jpg"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l">
                          <div uk-grid class="uk-grid-small">
                            <div class="uk-width-1-2@l"><img
                              src="https://s1.ollcdn.net/i/50/c8/81/50c881_865x483-ujasy.jpg"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Кинозалы OLL.TV-->

                  </div>


                </dd>
              </div>
            </li>
            <li>
              <a class="uk-accordion-title" href="#">
                <dt><i class="fas fa-tv"></i> Список каналов тарифного плана "МегаХит"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">
                  <div uk-grid class="uk-grid-small">

                    <div class="uk-width-1-1@l">
                      <h2 class="uk-heading-line uk-text-center"><span>Кино</span></h2>
                      <div uk-grid>
                        <div class="uk-width-1-3@l uk-grid-margin">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://s7.ollcdn.net/i/2b/cd/65/2bcd65537x295-vip-premiere-hd.png"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://s8.ollcdn.net/i/73/ff/59/73ff59537x295-hd-vip-megahit-hd.png"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                  </div>
                </dd>
              </div>
            </li>
            <li>
              <a class="uk-accordion-title" href="#">
                <dt><i class="fas fa-tv"></i> Описание тарифного плана "Киноман"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">
                  <p>Более 15000 фильмов и сериалов всегда под рукой. Охотимся за самыми интересными новинками и за
                    редкостями для ценителей! Пополнение коллекции — каждую неделю, всегда в прекрасном качестве. Любые
                    жанры, любимые актёры и фильмы,
                    которые должен посмотреть каждый. Новый день – новый фильм!
                  </p>
                </dd>
              </div>
            </li>
            <li>
              <a class="uk-accordion-title" href="#">
                <dt><i class="fas fa-tv"></i> Описание тарифного плана "Амедиатека"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">
                  <p>
                    Лучшее предложение для сериаломанов: горячие премьеры одновременно со всем миром в самом высоком
                    качестве. Еженедельные пополнения, классика HBO и самые впечатляющие новинки везде, где вы только
                    пожелаете: дома, на вашем ПК, на
                    планшетах и на смартфонах!
                  </p>
                </dd>
              </div>
            </li>
          </ul>
        </dl>
      </div>
    </li>
    <li>
      <a style=" margin-left: -30px; " class="uk-accordion-title" href="#"><h2 class="uk-margin-remove text-underline">
        Divan TV</h2></a>
      <div class="uk-accordion-content">
        <dl class="uk-description-list uk-description-list-divider">
          <dt>Стоимость подключения</dt>
          <dd class="uk-margin-small-top">1. Базовый комплект: приставка + настройка <span class="red-color">|</span>
            Цена: <span class="red-color">от 2000 грн.</span></dd>
        </dl>
        <dl class="uk-description-list uk-description-list-divider">
          <dt>Тарифные планы Divan TV</dt>
          <dd class="uk-margin-small-top">1. Тарифный план: Стартовый <span class="red-color">|</span> Цена: 80 грн./мес
          </dd>
          <dd class="uk-margin-small-top">2. Тарифный план: Оптимальный <span class="red-color">|</span> Цена: 99 грн./мес
          </dd>
          <dd class="uk-margin-small-top">3. Тарифный план: Престижный <span class="red-color">|</span> Цена: 199 грн./мес
          </dd>
          <dd class="uk-margin-small-top">3. Тарифный план: VIP <span class="red-color">|</span> Цена: 299 грн./мес</dd>
        </dl>
        <dl class="uk-description-list uk-description-list-divider channel-list">
          <ul uk-accordion>
            <li>
              <a class="uk-accordion-title" href="#">
                <dt>Список каналов тарифного плана "Стартовый"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">
                  <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">

                    <!--Фильмовые-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Фильмовые</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/27eb2687_th.png"
                              alt="Кинокомедия"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/aead5919_th.png"
                              alt="Наше любимое кино"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/f3265c14_th.png"
                              alt="Zee TV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/cca23bd7/25b6ead3_th.png"
                              alt="Дорама"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/36883995/f2bae8cc_th.png"
                              alt="Винтаж ТВ"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/1f63654a_th.png"
                              alt="Enter-Фильм"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/33230202/ca775f24_th.png"
                              alt="Бигуди"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Фильмовые-->

                    <!--Общенациональные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Общенациональные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/4611d119_th.png"
                              alt="1+1"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/844c4ae6/926bfc5a_th.png"
                              alt="2+2"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/cf33f7a3_th.png"
                              alt="Новый канал"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/501425a1/77d522d7_th.png"
                              alt="Украина"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/8ca21636_th.png"
                              alt="Интер"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/d7a63bff_th.png"
                              alt="ICTV"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/be25df96_th.png"
                              alt="СТБ"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/6f68f1b5/9b8ed6f4_th.png"
                              alt="ТЕТ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/5af45f8f_th.png"
                              alt="К1"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/18a3b18c_th.png"
                              alt="НТН"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/c937f1ce_th.png"
                              alt="UA:Перший"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/090744d4/e1cb4890_th.png"
                              alt="Прямий HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/47b3e934_th.png"
                              alt="Рада"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/36c2d4b0/d07e02c1_th.png"
                              alt="Телевсесвит"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/a1c3751c_th.png"
                              alt="UA:Культура"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Общенациональные-->

                    <!--Познавательные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Познавательные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/a3153efa_th.png"
                              alt="Zoo Парк"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/ba2be88a_th.png"
                              alt="Мега"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/e25e3268de9d37fb83ecbc3c3f61c08770bf3986_th.png"
                              alt="36.6 HD"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/9a8e71e5_th.png"
                              alt="Эко ТВ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/336f634a/ca221636_th.png"
                              alt="Da Vinci Learning (англ) "></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/336f634a/7d3c4857_th.png"
                              alt="Da Vinci Learning (укр)"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/dd2577af/e9e8bd2a_th.png"
                              alt="TRAVEL GUIDE-TV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/522ddd08/711c1b46_th.png"
                              alt="Культура"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/c5d1774e_th.png"
                              alt="Bambarbia TV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/dd61c33b/8bad5fc3_th.png"
                              alt="Navigator TV"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Познавательные-->

                    <!--Спортивные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Спортивные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/8cdcd2d9_th.png"
                              alt="XSport"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Спортивные-->

                    <!--Развлекательные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Развлекательные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/3480cf14_th.png"
                              alt="Classical Harmony HD"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/415b445c_th.png"
                              alt="К2"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e5301c0c/b0dd125e_th.png"
                              alt="Квартал ТВ"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/97c4c343/931803c6_th.png"
                              alt="НЛО TV"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/2dc5e8f5_th.png"
                              alt="ОЦЭ"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/97c4c343/a525f2be_th.png"
                              alt="Индиго"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/50a33860/f3adf7cd_th.png"
                              alt="Promo TV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/36883995/cf39dcd5_th.png"
                              alt="Zoom"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/26545a8b_th.png"
                              alt="Fashion TV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/6eb4c8f0_th.png"
                              alt="8 Канал"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/c8683dfd_th.png"
                              alt="Сонце"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/019e3241/3366282d_th.png"
                              alt="FilmUA Live"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/a05b3dfe/4e8ed074_th.png"
                              alt="ID Fashion "></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/4ab2019e_th.png"
                              alt="Star Family"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b3af640a/462f3747_th.png"
                              alt="WNESSTV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/608b0ee5_th.png"
                              alt="Milady Television"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/3825ce20_th.png"
                              alt="BOUTIQUETV"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Развлекательные-->

                    <!--Relax-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Relax</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/6b3813c29f12b2e73d39a27791c8a375eb7720e0_th.png"
                              alt="Relax Fire"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/9d8dda25/cf9314cd_th.png"
                              alt="Relax Mountains"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/c3d3d240/c2dd7d58_th.png"
                              alt="Relax Rain "></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/c3d3d240/59246c97_th.png"
                              alt="Relax Ocean "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/74790e85/27517cfa_th.png"
                              alt="Relax Snow"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/cfc165487b4141a692966581844feb9b74521f0b_th.png"
                              alt="Relax Train"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/55adc0f3dc67c486e5f8d3e9b15c9e4ea05adb29_th.png"
                              alt="Relax Forest"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/73c026b6e391f8b624c91749e9a3f326505d0d5c_th.png"
                              alt="Relax Space"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/c73bc64442eb42a6511bde2bf4b715d79a698944_th.png"
                              alt="Relax Waterfall"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/2a901b21/c41957fa_th.png"
                              alt="Relax Fish"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Relax-->

                    <!--Детские-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Детские</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/db03d833_th.png"
                              alt="Пиксель ТВ" loading="lazy"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/70538b2a_th.png"
                              alt="Малятко ТВ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/1ff77977_th.png"
                              alt="Lale"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e5301c0c/8b8ba5ad_th.png"
                              alt="ПЛЮСПЛЮС"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/ea76e6e3_th.png"
                              alt="Niki kids"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/52d15476_th.png"
                              alt="Niki junior"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Детские-->

                    <!--Информационные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Информационные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/b85334c8_th.png"
                              alt="112 УКРАИНА  HD"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/e48e9603_th.png"
                              alt="24 Канал HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/9f928e05_th.png"
                              alt="5 Канал"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/d16c588a_th.png"
                              alt="Перший діловий"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e5301c0c/d8597603_th.png"
                              alt="КРТ"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/0bae902e_th.png"
                              alt="ЧП.Инфо"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/3c8376d5_th.png"
                              alt="ZIK HD"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/2fa03e0c/cf9813be_th.png"
                              alt="Эспресо HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/3b29fd98_th.png"
                              alt="Deutsche welle"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/606b7222_th.png"
                              alt="Громадське Телебачення SD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/e7622bbd_th.png"
                              alt="Униан"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/adb056bf/3a72e775_th.png"
                              alt="ПравдаТУТ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/3e79331b_th.png"
                              alt="NewsNetwork"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/a17cbbe4_th.png"
                              alt="Настоящее время"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/76cc0c4c_th.png"
                              alt="SKRYPIN.UA"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/4c8a8bd9_th.png"
                              alt="OBOZ TV HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/bc5fad28/d4679330_th.png"
                              alt="OstWest"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1746fcfa/02ab7e6a_th.png"
                              alt="France 24 (фр) "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/316a46cd_th.png"
                              alt="News One"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/85f4f75a_th.png"
                              alt="Макси ТВ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/10f6650e/3f19aa6b_th.png"
                              alt="4 Канал"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/fa5d8d3f_th.png"
                              alt="CNL"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/36883995/5e9ccc2c_th.png"
                              alt="LIFE TV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/6d9c48e1/5a084012_th.png"
                              alt="Надія ТБ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/af41ea74_th.png"
                              alt="Глас"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Информационные-->

                    <!--Музыкальные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Музыкальные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/fbc9a265_th.png"
                              alt="MusicBox UA HD"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/f7649225_th.png"
                              alt="M1"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/358df6b2_th.png"
                              alt="M2"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/1745af25_th.png"
                              alt="EU Music HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e5301c0c/6c5c8b91_th.png"
                              alt="O-TV"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Музыкальные-->

                    <!--In english-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>In english</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/a175702c_th.png"
                              alt="Euronews"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/f021b1e5_th.png"
                              alt="France 24 (англ) "></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--In english-->

                    <!--Региональные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Региональные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8c5cc91a/33699a90_th.png"
                              alt="Украина 24"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/36c2d4b0/f4236545_th.png"
                              alt="Южная Волна"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/2349e496_th.png"
                              alt="СК1"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/62638b42_th.png"
                              alt="ATR "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/33147d0e_th.png"
                              alt="Перший Західний"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/daba6e9c_th.png"
                              alt="ТРК Алекс"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/8beadd51_th.png"
                              alt="Медіа-Інформ"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/7edf0cd4/296108b0_th.png"
                              alt="ІРТ Днепр"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/df811dd1/123cd867_th.png"
                              alt="ТРК Круг"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/0ce01e0b/b4a4b939_th.png"
                              alt="ТВА "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/7edf0cd4/45b88d52_th.png"
                              alt="ОТВ Днепр"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/5498707d_th.png"
                              alt="Галичина"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/f4f69b38_th.png"
                              alt="Первый Городской Кривой Рог"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/c2273bed_th.png"
                              alt="Первый городской Одесса"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/77b209512ed6f1249387011e343319b05159d6da_th.png"
                              alt="Тернопіль 1"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d7ed4e7c/3af38d29_th.png"
                              alt="11 канал"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ea492047/9d987702_th.png"
                              alt="Центральный канал (Киев)"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/336f634a/c3110cfe_th.png"
                              alt="Чорноморська ТРК "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/522ddd08/4952c14b_th.png"
                              alt="7 Канал"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/bcd801f0/52dd31a5_th.png"
                              alt="Полтавське ТБ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/81ddfead_th.png"
                              alt="UA:Буковина"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/522ddd08/3b9462cd_th.png"
                              alt="НТА "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/0ce01e0b/4e19f6e7_th.png"
                              alt="Чернівці"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/d408b8cb_th.png"
                              alt="UA: Донбас"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/090744d4/264e28dd_th.png"
                              alt="ТРК Киев"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/f8c48475_th.png"
                              alt="UA:Кропивницький "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/0b46b94f_th.png"
                              alt="UA:Запоріжжя"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/96ec1197_th.png"
                              alt="UA:Карпати"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/f51d4f5a_th.png"
                              alt="Миколаїв"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/fb39fae2_th.png"
                              alt="UA:Львів"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/5da9d048_th.png"
                              alt="UA:Полтава"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/a72f1766_th.png"
                              alt="UA:Одеса"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/dcdb85bb_th.png"
                              alt="UA:Тернопіль"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/3d480d0d_th.png"
                              alt="UA:Рівне"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/d796d0db_th.png"
                              alt="UA:Суми"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/a336aa8f_th.png"
                              alt="UA:Поділля"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/72e45e60_th.png"
                              alt="UA:Харків"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/3d04e2b5_th.png"
                              alt="UA: Херсон"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/34ba78aa_th.png"
                              alt="UA:Чернігів"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/7657fd89_th.png"
                              alt="UA:Черкаси"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/c3d5ada8_th.png"
                              alt="UA:Вінниця"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/0d78e4e1_th.png"
                              alt="UA:Волинь"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/ab924a29d168f980de432db379232c1d6245c6d5_th.png"
                              alt="UA:Житомир"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/9e7b6e33b17305623deee90d75726cf1c8b18b2b_th.png"
                              alt="D1"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d7cf14b6/d27653b7_th.png"
                              alt="UA: Закарпаття"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/a05b3dfe/d55f1cdc_th.png"
                              alt="Думская ТВ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/0117c728/cf10ae72_th.png"
                              alt="ДніпроTV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/6521e8d3/6925987e_th.png"
                              alt="Донеччина тв"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                  </div>
                </dd>
              </div>
            </li>
            <li>
              <a class="uk-accordion-title" href="#">
                <dt>Список каналов тарифного плана "Оптимальный"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">
                  <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">

                    <!--Фильмовые-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Фильмовые</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/27eb2687_th.png"
                              alt="Кинокомедия"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/aead5919_th.png"
                              alt="Наше любимое кино"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/f3265c14_th.png"
                              alt="Zee TV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/cca23bd7/25b6ead3_th.png"
                              alt="Дорама"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/36883995/f2bae8cc_th.png"
                              alt="Винтаж ТВ"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/1f63654a_th.png"
                              alt="Enter-Фильм"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/33230202/ca775f24_th.png"
                              alt="Бигуди"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/818c19f6_th.png"
                              alt="VIP Comedy HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/c7103ef1_th.png"
                              alt="TV1000"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/80201fc7_th.png"
                              alt="TV1000 Action"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/7b08e712/d0113eea_th.png"
                              alt="Epic Drama HD"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/1097dcf7_th.png"
                              alt="TV1000 World Kino"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d071d4f3/dfacf159_th.png"
                              alt="Paramount Comedy"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/41f58787/a3c5bd1b_th.png"
                              alt="Spike"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b9861f5f/09c7d047_th.png"
                              alt="Sony Channel "></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b9861f5f/aa10a18d_th.png"
                              alt="Sony Turbo"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b9861f5f/fc1d39c6_th.png"
                              alt="Sony SciFi"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d2a1bb00/69eb4fca_th.png"
                              alt="Hollywood HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8ef6fad5/070fb8bb_th.png"
                              alt="Киномикс"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/6ee82cc0_th.png"
                              alt="Мужское кино"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/98dd9d3b/8ab54c91_th.png"
                              alt="Киносерия"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/b39bd3a0_th.png"
                              alt="Bolt"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/0af65e8c_th.png"
                              alt="Star Cinema HD"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Фильмовые-->

                    <!--Общенациональные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Общенациональные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/4611d119_th.png"
                              alt="1+1"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/844c4ae6/926bfc5a_th.png"
                              alt="2+2"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/cf33f7a3_th.png"
                              alt="Новый канал"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/501425a1/77d522d7_th.png"
                              alt="Украина"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/8ca21636_th.png"
                              alt="Интер"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/d7a63bff_th.png"
                              alt="ICTV"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/be25df96_th.png"
                              alt="СТБ"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/6f68f1b5/9b8ed6f4_th.png"
                              alt="ТЕТ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/5af45f8f_th.png"
                              alt="К1"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/18a3b18c_th.png"
                              alt="НТН"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/c937f1ce_th.png"
                              alt="UA:Перший"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/090744d4/e1cb4890_th.png"
                              alt="Прямий HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/47b3e934_th.png"
                              alt="Рада"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/36c2d4b0/d07e02c1_th.png"
                              alt="Телевсесвит"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/a1c3751c_th.png"
                              alt="UA:Культура"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Общенациональные-->

                    <!--Познавательные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Познавательные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/a3153efa_th.png"
                              alt="Zoo Парк"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/ba2be88a_th.png"
                              alt="Мега"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/e25e3268de9d37fb83ecbc3c3f61c08770bf3986_th.png"
                              alt="36.6 HD"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/9a8e71e5_th.png"
                              alt="Эко ТВ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/336f634a/ca221636_th.png"
                              alt="Da Vinci Learning (англ) "></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/336f634a/7d3c4857_th.png"
                              alt="Da Vinci Learning (укр)"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/dd2577af/e9e8bd2a_th.png"
                              alt="TRAVEL GUIDE-TV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/522ddd08/711c1b46_th.png"
                              alt="Культура"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/c5d1774e_th.png"
                              alt="Bambarbia TV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/dd61c33b/8bad5fc3_th.png"
                              alt="Navigator TV"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/5a536576/3dacf3a3_th.png"
                              alt="Animal Planet "></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/051fe63e_th.png"
                              alt="Viasat Explore"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/5b4f2762_th.png"
                              alt="Viasat Nature "></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/c62fe3ed_th.png"
                              alt="Viasat History"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/6ca303d5_th.png"
                              alt="History HD"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/de92e8346fd81762b0d183cf2ad4813d76e752fe_th.png"
                              alt="H2"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/eac0d52e/068d7806_th.png"
                              alt="Travel  Channel"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/86256165/e6e28757_th.png"
                              alt="Discovery Channel "></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Познавательные-->

                    <!--Спортивные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Спортивные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/8cdcd2d9_th.png"
                              alt="XSport"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8375267b/efe07899_th.png"
                              alt=" Eurosport 1  "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d23c29d7/bf4407e4_th.png"
                              alt="Setanta Sports "></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/22feaff0_th.png"
                              alt="MostVideo TV HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/4113b343_th.png"
                              alt="XSport HD"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Спортивные-->

                    <!--Развлекательные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Развлекательные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/3480cf14_th.png"
                              alt="Classical Harmony HD"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/415b445c_th.png"
                              alt="К2"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e5301c0c/b0dd125e_th.png"
                              alt="Квартал ТВ"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/97c4c343/931803c6_th.png"
                              alt="НЛО TV"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/2dc5e8f5_th.png"
                              alt="ОЦЭ"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/97c4c343/a525f2be_th.png"
                              alt="Индиго"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/50a33860/f3adf7cd_th.png"
                              alt="Promo TV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/36883995/cf39dcd5_th.png"
                              alt="Zoom"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/26545a8b_th.png"
                              alt="Fashion TV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/6eb4c8f0_th.png"
                              alt="8 Канал"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/c8683dfd_th.png"
                              alt="Сонце"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/019e3241/3366282d_th.png"
                              alt="FilmUA Live"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/a05b3dfe/4e8ed074_th.png"
                              alt="ID Fashion "></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/4ab2019e_th.png"
                              alt="Star Family"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b3af640a/462f3747_th.png"
                              alt="WNESSTV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/608b0ee5_th.png"
                              alt="Milady Television"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/3825ce20_th.png"
                              alt="BOUTIQUETV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/86256165/a11636df_th.png"
                              alt="TLC "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ad2511b4/ac5c5cf0_th.png"
                              alt="HDFASHION"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1fd97cee/7f7f1ad4_th.png"
                              alt="Рыбалка "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/a05b3dfe/ac421a7a_th.png"
                              alt="Новое телевидение"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Развлекательные-->

                    <!--Relax-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Relax</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/6b3813c29f12b2e73d39a27791c8a375eb7720e0_th.png"
                              alt="Relax Fire"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/9d8dda25/cf9314cd_th.png"
                              alt="Relax Mountains"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/c3d3d240/c2dd7d58_th.png"
                              alt="Relax Rain "></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/c3d3d240/59246c97_th.png"
                              alt="Relax Ocean "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/74790e85/27517cfa_th.png"
                              alt="Relax Snow"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/cfc165487b4141a692966581844feb9b74521f0b_th.png"
                              alt="Relax Train"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/55adc0f3dc67c486e5f8d3e9b15c9e4ea05adb29_th.png"
                              alt="Relax Forest"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/73c026b6e391f8b624c91749e9a3f326505d0d5c_th.png"
                              alt="Relax Space"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/c73bc64442eb42a6511bde2bf4b715d79a698944_th.png"
                              alt="Relax Waterfall"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/2a901b21/c41957fa_th.png"
                              alt="Relax Fish"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b3ddedea/8435f74a_th.png"
                              alt="Relax Piano"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/bc9460b8/55e915ae_th.png"
                              alt="Relax Norway "></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Relax-->

                    <!--Детские-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Детские</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/db03d833_th.png"
                              alt="Пиксель ТВ" loading="lazy"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/70538b2a_th.png"
                              alt="Малятко ТВ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/1ff77977_th.png"
                              alt="Lale"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e5301c0c/8b8ba5ad_th.png"
                              alt="ПЛЮСПЛЮС"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/ea76e6e3_th.png"
                              alt="Niki kids"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/52d15476_th.png"
                              alt="Niki junior"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/aebf7d88_th.png"
                              alt="Nickelodeon"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/fd620d93_th.png"
                              alt="Nick Jr. "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e57224f5/d09bd8db_th.png"
                              alt="Duck TV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/1aeff88b_th.png"
                              alt="Малыш"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Детские-->

                    <!--Информационные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Информационные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/b85334c8_th.png"
                              alt="112 УКРАИНА  HD"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/e48e9603_th.png"
                              alt="24 Канал HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/9f928e05_th.png"
                              alt="5 Канал"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/d16c588a_th.png"
                              alt="Перший діловий"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e5301c0c/d8597603_th.png"
                              alt="КРТ"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/0bae902e_th.png"
                              alt="ЧП.Инфо"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/3c8376d5_th.png"
                              alt="ZIK HD"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/2fa03e0c/cf9813be_th.png"
                              alt="Эспресо HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/3b29fd98_th.png"
                              alt="Deutsche welle"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/606b7222_th.png"
                              alt="Громадське Телебачення SD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/e7622bbd_th.png"
                              alt="Униан"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/adb056bf/3a72e775_th.png"
                              alt="ПравдаТУТ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/3e79331b_th.png"
                              alt="NewsNetwork"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/a17cbbe4_th.png"
                              alt="Настоящее время"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/76cc0c4c_th.png"
                              alt="SKRYPIN.UA"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/4c8a8bd9_th.png"
                              alt="OBOZ TV HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/bc5fad28/d4679330_th.png"
                              alt="OstWest"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1746fcfa/02ab7e6a_th.png"
                              alt="France 24 (фр) "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/316a46cd_th.png"
                              alt="News One"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/85f4f75a_th.png"
                              alt="Макси ТВ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/10f6650e/3f19aa6b_th.png"
                              alt="4 Канал"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/fa5d8d3f_th.png"
                              alt="CNL"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/36883995/5e9ccc2c_th.png"
                              alt="LIFE TV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/6d9c48e1/5a084012_th.png"
                              alt="Надія ТБ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/af41ea74_th.png"
                              alt="Глас"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1746fcfa/7b2f0948_th.png"
                              alt="Беларусь  24"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Информационные-->

                    <!--Музыкальные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Музыкальные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/fbc9a265_th.png"
                              alt="MusicBox UA HD"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/f7649225_th.png"
                              alt="M1"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/358df6b2_th.png"
                              alt="M2"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/1745af25_th.png"
                              alt="EU Music HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e5301c0c/6c5c8b91_th.png"
                              alt="O-TV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d071d4f3/a639af48_th.png"
                              alt="MTV HITS"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d071d4f3/47598e32_th.png"
                              alt="MTV DANCE"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d071d4f3/8f1bd340_th.png"
                              alt="MTV ROCKS"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d071d4f3/ff31dfcc_th.png"
                              alt="VH1"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d071d4f3/a9bd7128_th.png"
                              alt="VH1 CLASSIC"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Музыкальные-->

                    <!--In english-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>In english</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/a175702c_th.png"
                              alt="Euronews"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/f021b1e5_th.png"
                              alt="France 24 (англ) "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e57224f5/34fcce6c_th.png"
                              alt="English Club TV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/39efd2ee_th.png"
                              alt="World Fashion Channel HD"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--In english-->

                    <!--Региональные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Региональные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8c5cc91a/33699a90_th.png"
                              alt="Украина 24"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/36c2d4b0/f4236545_th.png"
                              alt="Южная Волна"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/2349e496_th.png"
                              alt="СК1"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/62638b42_th.png"
                              alt="ATR "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/33147d0e_th.png"
                              alt="Перший Західний"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/daba6e9c_th.png"
                              alt="ТРК Алекс"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/8beadd51_th.png"
                              alt="Медіа-Інформ"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/7edf0cd4/296108b0_th.png"
                              alt="ІРТ Днепр"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/df811dd1/123cd867_th.png"
                              alt="ТРК Круг"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/0ce01e0b/b4a4b939_th.png"
                              alt="ТВА "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/7edf0cd4/45b88d52_th.png"
                              alt="ОТВ Днепр"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/5498707d_th.png"
                              alt="Галичина"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/f4f69b38_th.png"
                              alt="Первый Городской Кривой Рог"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/c2273bed_th.png"
                              alt="Первый городской Одесса"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/77b209512ed6f1249387011e343319b05159d6da_th.png"
                              alt="Тернопіль 1"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d7ed4e7c/3af38d29_th.png"
                              alt="11 канал"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ea492047/9d987702_th.png"
                              alt="Центральный канал (Киев)"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/336f634a/c3110cfe_th.png"
                              alt="Чорноморська ТРК "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/522ddd08/4952c14b_th.png"
                              alt="7 Канал"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/bcd801f0/52dd31a5_th.png"
                              alt="Полтавське ТБ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/81ddfead_th.png"
                              alt="UA:Буковина"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/522ddd08/3b9462cd_th.png"
                              alt="НТА "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/0ce01e0b/4e19f6e7_th.png"
                              alt="Чернівці"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/d408b8cb_th.png"
                              alt="UA: Донбас"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/090744d4/264e28dd_th.png"
                              alt="ТРК Киев"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/f8c48475_th.png"
                              alt="UA:Кропивницький "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/0b46b94f_th.png"
                              alt="UA:Запоріжжя"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/96ec1197_th.png"
                              alt="UA:Карпати"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/f51d4f5a_th.png"
                              alt="Миколаїв"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/fb39fae2_th.png"
                              alt="UA:Львів"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/5da9d048_th.png"
                              alt="UA:Полтава"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/a72f1766_th.png"
                              alt="UA:Одеса"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/dcdb85bb_th.png"
                              alt="UA:Тернопіль"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/3d480d0d_th.png"
                              alt="UA:Рівне"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/d796d0db_th.png"
                              alt="UA:Суми"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/a336aa8f_th.png"
                              alt="UA:Поділля"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/72e45e60_th.png"
                              alt="UA:Харків"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/3d04e2b5_th.png"
                              alt="UA: Херсон"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/34ba78aa_th.png"
                              alt="UA:Чернігів"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/7657fd89_th.png"
                              alt="UA:Черкаси"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/c3d5ada8_th.png"
                              alt="UA:Вінниця"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/0d78e4e1_th.png"
                              alt="UA:Волинь"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/ab924a29d168f980de432db379232c1d6245c6d5_th.png"
                              alt="UA:Житомир"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/9e7b6e33b17305623deee90d75726cf1c8b18b2b_th.png"
                              alt="D1"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d7cf14b6/d27653b7_th.png"
                              alt="UA: Закарпаття"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/a05b3dfe/d55f1cdc_th.png"
                              alt="Думская ТВ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/0117c728/cf10ae72_th.png"
                              alt="ДніпроTV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/6521e8d3/6925987e_th.png"
                              alt="Донеччина тв"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/36bf91a5_th.png"
                              alt="TV5"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/50520e50_th.png"
                              alt="Чернівецький Промінь HD"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Региональные-->

                  </div>
                </dd>
              </div>
            </li>
            <li>
              <a class="uk-accordion-title" href="#">
                <dt>Список каналов тарифного плана "Престижный"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">
                  <div uk-grid="" class="uk-grid-small uk-grid uk-grid-stack">

                    <!--Фильмовые-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Фильмовые</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/27eb2687_th.png"
                              alt="Кинокомедия"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/aead5919_th.png"
                              alt="Наше любимое кино"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/f3265c14_th.png"
                              alt="Zee TV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/cca23bd7/25b6ead3_th.png"
                              alt="Дорама"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/36883995/f2bae8cc_th.png"
                              alt="Винтаж ТВ"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/1f63654a_th.png"
                              alt="Enter-Фильм"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/33230202/ca775f24_th.png"
                              alt="Бигуди"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/818c19f6_th.png"
                              alt="VIP Comedy HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/c7103ef1_th.png"
                              alt="TV1000"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/80201fc7_th.png"
                              alt="TV1000 Action"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/7b08e712/d0113eea_th.png"
                              alt="Epic Drama HD"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/1097dcf7_th.png"
                              alt="TV1000 World Kino"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d071d4f3/dfacf159_th.png"
                              alt="Paramount Comedy"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/41f58787/a3c5bd1b_th.png"
                              alt="Spike"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b9861f5f/09c7d047_th.png"
                              alt="Sony Channel "></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b9861f5f/aa10a18d_th.png"
                              alt="Sony Turbo"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b9861f5f/fc1d39c6_th.png"
                              alt="Sony SciFi"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d2a1bb00/69eb4fca_th.png"
                              alt="Hollywood HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8ef6fad5/070fb8bb_th.png"
                              alt="Киномикс"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/6ee82cc0_th.png"
                              alt="Мужское кино"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/98dd9d3b/8ab54c91_th.png"
                              alt="Киносерия"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/b39bd3a0_th.png"
                              alt="Bolt"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/0af65e8c_th.png"
                              alt="Star Cinema HD"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Фильмовые-->

                    <!--Общенациональные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Общенациональные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/4611d119_th.png"
                              alt="1+1"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/844c4ae6/926bfc5a_th.png"
                              alt="2+2"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/cf33f7a3_th.png"
                              alt="Новый канал"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/501425a1/77d522d7_th.png"
                              alt="Украина"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/8ca21636_th.png"
                              alt="Интер"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/d7a63bff_th.png"
                              alt="ICTV"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/be25df96_th.png"
                              alt="СТБ"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/6f68f1b5/9b8ed6f4_th.png"
                              alt="ТЕТ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/5af45f8f_th.png"
                              alt="К1"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/18a3b18c_th.png"
                              alt="НТН"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/c937f1ce_th.png"
                              alt="UA:Перший"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/090744d4/e1cb4890_th.png"
                              alt="Прямий HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/47b3e934_th.png"
                              alt="Рада"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/36c2d4b0/d07e02c1_th.png"
                              alt="Телевсесвит"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/a1c3751c_th.png"
                              alt="UA:Культура"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Общенациональные-->

                    <!--Познавательные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Познавательные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/a3153efa_th.png"
                              alt="Zoo Парк"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/ba2be88a_th.png"
                              alt="Мега"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/e25e3268de9d37fb83ecbc3c3f61c08770bf3986_th.png"
                              alt="36.6 HD"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/9a8e71e5_th.png"
                              alt="Эко ТВ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/336f634a/ca221636_th.png"
                              alt="Da Vinci Learning (англ) "></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/336f634a/7d3c4857_th.png"
                              alt="Da Vinci Learning (укр)"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/dd2577af/e9e8bd2a_th.png"
                              alt="TRAVEL GUIDE-TV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/522ddd08/711c1b46_th.png"
                              alt="Культура"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/c5d1774e_th.png"
                              alt="Bambarbia TV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/dd61c33b/8bad5fc3_th.png"
                              alt="Navigator TV"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/5a536576/3dacf3a3_th.png"
                              alt="Animal Planet "></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/051fe63e_th.png"
                              alt="Viasat Explore"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/5b4f2762_th.png"
                              alt="Viasat Nature "></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/c62fe3ed_th.png"
                              alt="Viasat History"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/6ca303d5_th.png"
                              alt="History HD"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/de92e8346fd81762b0d183cf2ad4813d76e752fe_th.png"
                              alt="H2"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/eac0d52e/068d7806_th.png"
                              alt="Travel  Channel"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/86256165/e6e28757_th.png"
                              alt="Discovery Channel "></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Познавательные-->

                    <!--Спортивные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Спортивные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/8cdcd2d9_th.png"
                              alt="XSport"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8375267b/efe07899_th.png"
                              alt=" Eurosport 1  "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d23c29d7/bf4407e4_th.png"
                              alt="Setanta Sports "></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/22feaff0_th.png"
                              alt="MostVideo TV HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/4113b343_th.png"
                              alt="XSport HD"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Спортивные-->

                    <!--Развлекательные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Развлекательные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/3480cf14_th.png"
                              alt="Classical Harmony HD"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/415b445c_th.png"
                              alt="К2"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e5301c0c/b0dd125e_th.png"
                              alt="Квартал ТВ"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/97c4c343/931803c6_th.png"
                              alt="НЛО TV"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/2dc5e8f5_th.png"
                              alt="ОЦЭ"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/97c4c343/a525f2be_th.png"
                              alt="Индиго"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/50a33860/f3adf7cd_th.png"
                              alt="Promo TV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/36883995/cf39dcd5_th.png"
                              alt="Zoom"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/26545a8b_th.png"
                              alt="Fashion TV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/6eb4c8f0_th.png"
                              alt="8 Канал"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/c8683dfd_th.png"
                              alt="Сонце"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/019e3241/3366282d_th.png"
                              alt="FilmUA Live"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/a05b3dfe/4e8ed074_th.png"
                              alt="ID Fashion "></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/4ab2019e_th.png"
                              alt="Star Family"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b3af640a/462f3747_th.png"
                              alt="WNESSTV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/608b0ee5_th.png"
                              alt="Milady Television"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/3825ce20_th.png"
                              alt="BOUTIQUETV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/86256165/a11636df_th.png"
                              alt="TLC "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ad2511b4/ac5c5cf0_th.png"
                              alt="HDFASHION"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1fd97cee/7f7f1ad4_th.png"
                              alt="Рыбалка "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/a05b3dfe/ac421a7a_th.png"
                              alt="Новое телевидение"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Развлекательные-->

                    <!--Relax-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Relax</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/6b3813c29f12b2e73d39a27791c8a375eb7720e0_th.png"
                              alt="Relax Fire"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/9d8dda25/cf9314cd_th.png"
                              alt="Relax Mountains"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/c3d3d240/c2dd7d58_th.png"
                              alt="Relax Rain "></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/c3d3d240/59246c97_th.png"
                              alt="Relax Ocean "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/74790e85/27517cfa_th.png"
                              alt="Relax Snow"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/cfc165487b4141a692966581844feb9b74521f0b_th.png"
                              alt="Relax Train"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/55adc0f3dc67c486e5f8d3e9b15c9e4ea05adb29_th.png"
                              alt="Relax Forest"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/73c026b6e391f8b624c91749e9a3f326505d0d5c_th.png"
                              alt="Relax Space"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/c73bc64442eb42a6511bde2bf4b715d79a698944_th.png"
                              alt="Relax Waterfall"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/2a901b21/c41957fa_th.png"
                              alt="Relax Fish"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b3ddedea/8435f74a_th.png"
                              alt="Relax Piano"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/bc9460b8/55e915ae_th.png"
                              alt="Relax Norway "></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Relax-->

                    <!--Детские-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Детские</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/db03d833_th.png"
                              alt="Пиксель ТВ" loading="lazy"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/70538b2a_th.png"
                              alt="Малятко ТВ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/1ff77977_th.png"
                              alt="Lale"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e5301c0c/8b8ba5ad_th.png"
                              alt="ПЛЮСПЛЮС"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/ea76e6e3_th.png"
                              alt="Niki kids"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/52d15476_th.png"
                              alt="Niki junior"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/aebf7d88_th.png"
                              alt="Nickelodeon"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/fd620d93_th.png"
                              alt="Nick Jr. "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e57224f5/d09bd8db_th.png"
                              alt="Duck TV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/1aeff88b_th.png"
                              alt="Малыш"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Детские-->

                    <!--Информационные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Информационные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/b85334c8_th.png"
                              alt="112 УКРАИНА  HD"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/e48e9603_th.png"
                              alt="24 Канал HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/9f928e05_th.png"
                              alt="5 Канал"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/d16c588a_th.png"
                              alt="Перший діловий"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e5301c0c/d8597603_th.png"
                              alt="КРТ"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/0bae902e_th.png"
                              alt="ЧП.Инфо"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/3c8376d5_th.png"
                              alt="ZIK HD"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/2fa03e0c/cf9813be_th.png"
                              alt="Эспресо HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/3b29fd98_th.png"
                              alt="Deutsche welle"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/606b7222_th.png"
                              alt="Громадське Телебачення SD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/e7622bbd_th.png"
                              alt="Униан"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/adb056bf/3a72e775_th.png"
                              alt="ПравдаТУТ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/3e79331b_th.png"
                              alt="NewsNetwork"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/a17cbbe4_th.png"
                              alt="Настоящее время"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/76cc0c4c_th.png"
                              alt="SKRYPIN.UA"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/4c8a8bd9_th.png"
                              alt="OBOZ TV HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/bc5fad28/d4679330_th.png"
                              alt="OstWest"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1746fcfa/02ab7e6a_th.png"
                              alt="France 24 (фр) "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/316a46cd_th.png"
                              alt="News One"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/85f4f75a_th.png"
                              alt="Макси ТВ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/10f6650e/3f19aa6b_th.png"
                              alt="4 Канал"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/fa5d8d3f_th.png"
                              alt="CNL"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/36883995/5e9ccc2c_th.png"
                              alt="LIFE TV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/6d9c48e1/5a084012_th.png"
                              alt="Надія ТБ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/af41ea74_th.png"
                              alt="Глас"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1746fcfa/7b2f0948_th.png"
                              alt="Беларусь  24"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Информационные-->

                    <!--Музыкальные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Музыкальные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/fbc9a265_th.png"
                              alt="MusicBox UA HD"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/f7649225_th.png"
                              alt="M1"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/358df6b2_th.png"
                              alt="M2"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/1745af25_th.png"
                              alt="EU Music HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e5301c0c/6c5c8b91_th.png"
                              alt="O-TV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d071d4f3/a639af48_th.png"
                              alt="MTV HITS"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d071d4f3/47598e32_th.png"
                              alt="MTV DANCE"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d071d4f3/8f1bd340_th.png"
                              alt="MTV ROCKS"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d071d4f3/ff31dfcc_th.png"
                              alt="VH1"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d071d4f3/a9bd7128_th.png"
                              alt="VH1 CLASSIC"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Музыкальные-->

                    <!--In english-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>In english</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/a175702c_th.png"
                              alt="Euronews"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/f021b1e5_th.png"
                              alt="France 24 (англ) "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e57224f5/34fcce6c_th.png"
                              alt="English Club TV"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/39efd2ee_th.png"
                              alt="World Fashion Channel HD"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--In english-->

                    <!--Региональные-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Региональные</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8c5cc91a/33699a90_th.png"
                              alt="Украина 24"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/36c2d4b0/f4236545_th.png"
                              alt="Южная Волна"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/2349e496_th.png"
                              alt="СК1"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/62638b42_th.png"
                              alt="ATR "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/33147d0e_th.png"
                              alt="Перший Західний"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/390420e6/daba6e9c_th.png"
                              alt="ТРК Алекс"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/8beadd51_th.png"
                              alt="Медіа-Інформ"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/7edf0cd4/296108b0_th.png"
                              alt="ІРТ Днепр"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/df811dd1/123cd867_th.png"
                              alt="ТРК Круг"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/0ce01e0b/b4a4b939_th.png"
                              alt="ТВА "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/7edf0cd4/45b88d52_th.png"
                              alt="ОТВ Днепр"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/5498707d_th.png"
                              alt="Галичина"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8e82ff58/f4f69b38_th.png"
                              alt="Первый Городской Кривой Рог"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b364a99a/c2273bed_th.png"
                              alt="Первый городской Одесса"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/77b209512ed6f1249387011e343319b05159d6da_th.png"
                              alt="Тернопіль 1"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d7ed4e7c/3af38d29_th.png"
                              alt="11 канал"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ea492047/9d987702_th.png"
                              alt="Центральный канал (Киев)"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/336f634a/c3110cfe_th.png"
                              alt="Чорноморська ТРК "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/522ddd08/4952c14b_th.png"
                              alt="7 Канал"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/bcd801f0/52dd31a5_th.png"
                              alt="Полтавське ТБ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/81ddfead_th.png"
                              alt="UA:Буковина"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/522ddd08/3b9462cd_th.png"
                              alt="НТА "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/0ce01e0b/4e19f6e7_th.png"
                              alt="Чернівці"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/d408b8cb_th.png"
                              alt="UA: Донбас"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/090744d4/264e28dd_th.png"
                              alt="ТРК Киев"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/f8c48475_th.png"
                              alt="UA:Кропивницький "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/0b46b94f_th.png"
                              alt="UA:Запоріжжя"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/96ec1197_th.png"
                              alt="UA:Карпати"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/f51d4f5a_th.png"
                              alt="Миколаїв"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/fb39fae2_th.png"
                              alt="UA:Львів"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/5da9d048_th.png"
                              alt="UA:Полтава"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/a72f1766_th.png"
                              alt="UA:Одеса"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/dcdb85bb_th.png"
                              alt="UA:Тернопіль"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/3d480d0d_th.png"
                              alt="UA:Рівне"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/d796d0db_th.png"
                              alt="UA:Суми"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/a336aa8f_th.png"
                              alt="UA:Поділля"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/72e45e60_th.png"
                              alt="UA:Харків"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/3d04e2b5_th.png"
                              alt="UA: Херсон"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/34ba78aa_th.png"
                              alt="UA:Чернігів"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/7657fd89_th.png"
                              alt="UA:Черкаси"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/c3d5ada8_th.png"
                              alt="UA:Вінниця"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b328c8d2/0d78e4e1_th.png"
                              alt="UA:Волинь"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/ab924a29d168f980de432db379232c1d6245c6d5_th.png"
                              alt="UA:Житомир"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/9e7b6e33b17305623deee90d75726cf1c8b18b2b_th.png"
                              alt="D1"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d7cf14b6/d27653b7_th.png"
                              alt="UA: Закарпаття"></div>
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/a05b3dfe/d55f1cdc_th.png"
                              alt="Думская ТВ"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/0117c728/cf10ae72_th.png"
                              alt="ДніпроTV"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/6521e8d3/6925987e_th.png"
                              alt="Донеччина тв"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ce60bff7/36bf91a5_th.png"
                              alt="TV5"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/b4b4525d/50520e50_th.png"
                              alt="Чернівецький Промінь HD"></div>
                          </div>
                        </div>

                      </div>
                    </div>
                    <!--Региональные-->

                    <!--Все разом-->
                    <div class="uk-width-1-1@l uk-first-column">
                      <h2 class="uk-heading-line uk-text-center"><span>Все разом</span></h2>
                      <div uk-grid="" class="uk-grid uk-grid-stack">

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/97acf9d5_th.png"
                              alt="VIP Megahit HD"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/2fe4a512_th.png"
                              alt="VIP Premiere HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/86256165/66352d82_th.png"
                              alt="Investigation Discovery HD "></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8375267b/cbdfd3a9_th.png"
                              alt="Discovery Science HD "></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/8375267b/456472cc_th.png"
                              alt="Discovery Showcase  HD"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/e57224f5/21f18ed3_th.png"
                              alt="Viasat Nature/History HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/1f6897ae/b451ee80_th.png"
                              alt="Viasat Sport HD"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ea77c8ef/e154573b_th.png"
                              alt="Food Network"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/ea77c8ef/633f5b8a_th.png"
                              alt="Fine Living"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/d071d4f3/316c5af0_th.png"
                              alt="MTV Live HD"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/6d9c48e1/37a5e5a0_th.png"
                              alt="Nickelodeon (англ)"></div>
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/channels/eac0d52e/8aec7fca_th.png"
                              alt="Travel  Channel (англ)"></div>
                          </div>
                        </div>

                        <div class="uk-width-1-3@l uk-first-column">
                          <div uk-grid="" class="uk-grid-small uk-grid">
                            <div class="uk-width-1-2@l uk-first-column"><img
                              src="https://n.divan.tv/img/global_img/media_api/saas_channels/69a2c4601c0dd5f4ce56aedea10a508ca943c7a8_th.png"
                              alt="English Club (eng)"></div>
                          </div>
                        </div>

                      </div>
                    </div>

                  </div>
                </dd>
              </div>
            </li>
            <li>
              <a class="uk-accordion-title" href="#">
                <dt>Список каналов тарифного плана "VIP"</dt>
              </a>
              <div class="uk-accordion-content">
                <dd class="uk-margin-small-top">1. Тарифный план: Лёгкий <span class="red-color">|</span> Цена: 80
                  грн./мес
                </dd>
              </div>
            </li>
          </ul>
        </dl>
      </div>
    </li>
  </ul>

  <h2>Дополнительная информация</h2><h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения без
    абонентской платы</h3>

  <ul class="uk-list"><a href="/ru/подключение-и-настройка-спутникового-телевидения">
    <li><i class="fas fa-external-link-alt"></i> Подключение и настройка спутникового телевидения</li>
  </a>
    <p class="uk-text-meta uk-margin-remove">* В данном подключении с 20.01.2020 г. не будет основных украинских
      каналов</p>  <a href="/ru/подключение-и-настройка-цифрового-эфирного-телевидения-т2">
      <li class="uk-padding-small uk-padding-remove-left"><i class="fas fa-external-link-alt"></i> Подключение и настройка
        цифрового эфирного телевидения (DVB-T2)
      </li>
    </a> <a href="/ru/подключение-и-настройка-комбинированного-спутникового-и-эфирного-т2-телевидения">
      <li><i class="fas fa-external-link-alt"></i> Подключение и настройка комбинированного (спутникового и эфирного
        DVB-T2) телевидения
      </li>
    </a>
  </ul>

  <h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения всех каналов c абонентской платой</h3>

  <ul class="uk-list">
    <a href="/ru/подключение-и-настройка-viasat">
      <li><i class="fas fa-external-link-alt"></i> Подключение и настройка Viasat</li>
    </a>
    <a href="/ru/лючение-и-настройка-extra-tv">
      <li class="uk-padding-small uk-padding-remove-left"><i class="fas fa-external-link-alt"></i> Подключение и настройка
        Extra TV
      </li>
    </a>
  </ul>
', 18);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 33, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Видеонаблюдение</h1>
    <p class="header-separator uk-margin-remove">Проектирование и монтаж систем видеонаблюдения:</p>
    <p class="uk-margin-remove-top uk-margin-remove-bottom text-white uk-text-meta">
      <a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#проводные">Проводные</a>
      <span class="header-separator direct-slash-separator"> | </span>
      <a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#безпроводные">Безпроводные</a>
      <span class="header-separator direct-slash-separator"> | </span>
      <a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#комбинированные">Комбинированные</a>
      
      
      
      
    </p>
    <p class="header-separator uk-margin-remove-bottom">Дополнительные услуги: </p>
    <p class="uk-margin-remove-top uk-margin-remove-bottom text-white uk-text-meta">
      <a href="/ru/модернизация-настройка-и-ремонт-систем-видеонаблюдения">Модернизация, настройка и ремонт систем видеонаблюдения</a>
      
      
      
      
      
      
      
      
      
      
      
      
    </p>
  </div>
</div>', 37);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 34, '<img src="/images/no-image.jpg">
<h2 class="uk-margin-small-top">Проектирование и монтаж проводных систем видеонаблюдения</h2>
<p>
  Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения систем массового участия.
  Значимость этих проблем настолько очевидна, что консультация с широким активом требуют определения и уточнения форм развития.
</p>
<a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#проводные" class="uk-button uk-button-secondary">Читать материал</a>
<hr class="uk-divider-icon">

<img src="/images/no-image.jpg">
<h2 class="uk-margin-small-top">Проектирование и монтаж безпроводных систем видеонаблюдения</h2>
<p>
  Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения систем массового участия.
  Значимость этих проблем настолько очевидна, что консультация с широким активом требуют определения и уточнения форм развития.
</p>
<a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#безпроводные" class="uk-button uk-button-secondary">Читать материал</a>
<hr class="uk-divider-icon">

<img src="/images/no-image.jpg">
<h2 class="uk-margin-small-top">Проектирование и монтаж комбинированных систем видеонаблюдения</h2>
<p>
  Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения систем массового участия.
  Значимость этих проблем настолько очевидна, что консультация с широким активом требуют определения и уточнения форм развития.
</p>
<a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#комбинированные" class="uk-button uk-button-secondary">Читать материал</a>












<hr class="uk-divider-icon">

<img src="/images/no-image.jpg">
<h2 class="uk-margin-small-top">Модернизация, настройка и ремонт систем видеонаблюдения</h2>
<p>Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения систем массового участия. Значимость этих проблем настолько очевидна, что консультация с широким активом требуют определения и уточнения форм развития.


</p>
<a href="/ru/модернизация-настройка-и-ремонт-систем-видеонаблюдения" class="uk-button uk-button-secondary">Читать материал</a>', 38);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 35, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Проектирование и монтаж<br>
систем видеонаблюдения</h1>
    
    
    
    
  </div>
</div>', 39);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 36, ' ', 40);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 37, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Модернизация, настройка и ремонт<br>
систем видеонаблюдения</h1>
    
    
    
    
  </div>
</div>', 41);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 38, ' ', 42);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 39, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Интернет</h1>
    <p class="header-separator uk-margin-remove">Подключение и настройка:</p>
    <p class="uk-margin-remove-top uk-margin-remove-bottom text-white uk-text-meta">
      <a href="/ru/подключение-и-настройка-спутникового-интернета">Cпутникового интернета</a>
      <span class="header-separator direct-slash-separator"> | </span>
      <a href="/ru/подключение-и-настройка-3g-и-4g-интернета-операторов-мобильной-связи-Kyivstar-Life-Cell-и-Vodafone">3G и 4G интернета операторов мобильной связи Kyivstar, Life Cell и Vodafone</a>
      
      
      
      
      
      
    </p>
    <p class="header-separator uk-margin-remove-bottom">Дополнительные услуги: </p>
    <p class="uk-margin-remove-top uk-margin-remove-bottom text-white uk-text-meta">
      <a href="/ru/усиление-3g-4g-и-gsm-сигнала-операторов-мобильной-связи-kyivstar-life-cell-и-vodafone">Усиление 3G, 4G и GSM сигнала операторов мобильной связи Kyivstar, Life Cell и Vodafone</a>
      
      
      
      
      
      
      
      
      
      
      
      
    </p>
  </div>
</div>', 43);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 40, '<img src="/images/no-image.jpg">
<h2 class="uk-margin-small-top">Подключение и настройка спутникового интернета</h2>
<p>
  Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения систем массового участия.
  Значимость этих проблем настолько очевидна, что консультация с широким активом требуют определения и уточнения форм развития.
</p>
<a href="/ru/подключение-и-настройка-спутникового-интернета" class="uk-button uk-button-secondary">Читать материал</a>
<hr class="uk-divider-icon">

<img src="/images/no-image.jpg">
<h2 class="uk-margin-small-top">Подключение и настройка 3G и 4G интернета операторов мобильной связи Kyivstar, Life Cell и Vodafone</h2>
<p>
  Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения систем массового участия.
  Значимость этих проблем настолько очевидна, что консультация с широким активом требуют определения и уточнения форм развития.
</p>
<a href="/ru/подключение-и-настройка-3g-и-4g-интернета-операторов-мобильной-связи-Kyivstar-Life-Cell-и-Vodafone" class="uk-button uk-button-secondary">Читать материал</a>


















<hr class="uk-divider-icon">

<img src="/images/no-image.jpg">
<h2 class="uk-margin-small-top">Усиление 3G, 4G и GSM сигнала операторов мобильной связи Kyivstar, Life Cell и Vodafone</h2>
<p>Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения систем массового участия. Значимость этих проблем настолько очевидна, что консультация с широким активом требуют определения и уточнения форм развития.


</p>
<a href="/ru/усиление-3g-4g-и-gsm-сигнала-операторов-мобильной-связи-kyivstar-life-cell-и-vodafone" class="uk-button uk-button-secondary">Читать материал</a>', 44);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 41, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Подключение и настройка<br>
спутникового интернета</h1>
    
    
    
    
  </div>
</div>', 45);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 42, ' ', 46);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 43, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Подключение и настройка 3G и 4G интернета <br>
операторов мобильной связи Kyivstar, Life Cell и Vodafone</h1>
    
    
    
    
  </div>
</div>', 47);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 44, ' ', 48);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 45, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Усиление 3G, 4G и GSM сигнала операторов<br>
мобильной связи Kyivstar, Life Cell и Vodafone</h1>
    
    
    
    
  </div>
</div>', 49);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 46, ' ', 50);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 47, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Домофонные системы</h1>
    
    
    
    
  </div>
</div>', 51);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 48, ' ', 52);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 49, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Обслуживание ПК</h1>
    
    
    
    
  </div>
</div>', 53);

-- ----------------------------
-- Table structure for customjs
-- ----------------------------
DROP TABLE IF EXISTS "public"."customjs";
CREATE TABLE "public"."customjs" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL DEFAULT nextval('customjs_id_seq'::regclass),
  "src" text COLLATE "pg_catalog"."default",
  "moduleId" float4
)
;

-- ----------------------------
-- Records of customjs
-- ----------------------------
INSERT INTO "public"."customjs" VALUES (1571154569061, 1571154569061, 1, '/js/mainslideshow.js', 4);

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS "public"."languages";
CREATE TABLE "public"."languages" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL DEFAULT nextval('languages_id_seq'::regclass),
  "code" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO "public"."languages" VALUES (1571154569061, 1571154569061, 1, 'ru');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."menu";
CREATE TABLE "public"."menu" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL DEFAULT nextval('menu_id_seq'::regclass),
  "name" text COLLATE "pg_catalog"."default",
  "systemName" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO "public"."menu" VALUES (1571154569061, 1571154569061, 1, 'Главное меню', 'mainmenu');

-- ----------------------------
-- Table structure for menuitems
-- ----------------------------
DROP TABLE IF EXISTS "public"."menuitems";
CREATE TABLE "public"."menuitems" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL DEFAULT nextval('menuitems_id_seq'::regclass),
  "name" text COLLATE "pg_catalog"."default",
  "systemName" text COLLATE "pg_catalog"."default",
  "parent" float4,
  "level" float4,
  "sort" float4,
  "link" text COLLATE "pg_catalog"."default",
  "menu" int4
)
;

-- ----------------------------
-- Records of menuitems
-- ----------------------------
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 1, 'Главная', 'главная', 0, 1, 1, '/ru', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 2, 'Услуги', 'separator', 1, 1, 2, ' ', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 3, 'Телевидение', 'телевидение', 1, 2, 3, '/ru/телевидение', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 4, 'Подключение и настройка', 'separator', 1, 3, 4, ' ', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 5, 'Спутникового телевидения', 'подключение-и-настройка-спутникового-телевидения', 0, 4, 5, '/ru/подключение-и-настройка-спутникового-телевидения', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 6, 'Цифрового эфирного телевидения (Т2)', 'подключение-и-настройка-цифрового-эфирного-телевидения-т2', 0, 4, 6, '/ru/подключение-и-настройка-цифрового-эфирного-телевидения-т2', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 7, 'Интернет телевидения (IPTV, OTT)', 'подключение-и-настройка-интернет-телевидения-iptv-ott', 0, 4, 8, '/ru/подключение-и-настройка-интернет-телевидения-iptv-ott', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 8, 'Viasat', 'подключение-и-настройка-viasat', 0, 4, 9, '/ru/подключение-и-настройка-viasat', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 9, 'Extra TV', 'подключение-и-настройка-extra-tv', 0, 4, 10, '/ru/подключение-и-настройка-extra-tv', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 10, 'Дополнительные услуги:', 'separator', 1, 3, 11, ' ', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 11, 'Модернизация, настройка и ремонт оборудования для спутникового, эфирного и IPTV телевидения', 'модернизация-настройка-и-ремонт-оборудования-для-спутникового-эфирного-и-iptv-телевидения', 0, 4, 12, '/ru/модернизация-настройка-и-ремонт-оборудования-для-спутникового-эфирного-и-iptv-телевидения', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 14, 'Megogo', 'megogo', 0, 4, 15, '/ru/подключение-и-настройка-интернет-телевидения-iptv-ott', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 15, 'OLL TV', 'oll-tv', 0, 4, 16, '/ru/подключение-и-настройка-интернет-телевидения-iptv-ott', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 16, 'Divan TV', 'divan-tv', 0, 4, 17, '/ru/подключение-и-настройка-интернет-телевидения-iptv-ott', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 17, 'Демонтаж спутниковой антены', 'separator', 0, 4, 18, '/ru/демонтаж-спутниковой-антены', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 18, 'Видеонаблюдение', 'видеонаблюдение', 1, 2, 19, '/ru/видеонаблюдение', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 19, 'Проектирование и монтаж систем видеонаблюдения', 'проектирование-и-монтаж-систем-видеонаблюдения', 1, 3, 20, '/ru/проектирование-и-монтаж-систем-видеонаблюдения', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 20, 'Проводные', 'hashlink', 0, 4, 21, '/ru/проектирование-и-монтаж-систем-видеонаблюдения#проводные', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 21, 'Безпроводные', 'hashlink', 0, 4, 22, '/ru/проектирование-и-монтаж-систем-видеонаблюдения#безпроводные', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 22, 'Комбинированные', 'hashlink', 0, 4, 23, '/ru/проектирование-и-монтаж-систем-видеонаблюдения#комбинированные', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 23, 'Дополнительные услуги:', 'separator', 1, 3, 24, ' ', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 24, 'Модернизация, настройка и ремонт систем видеонаблюдения', 'модернизация-настройка-и-ремонт-систем-видеонаблюдения', 0, 4, 25, '/ru/модернизация-настройка-и-ремонт-систем-видеонаблюдения', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 25, 'Интернет', 'интернет', 1, 2, 26, '/ru/интернет', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 26, 'Подключение и настройка:', 'separator', 1, 3, 27, ' ', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 27, 'Cпутникового интернета', 'подключение-и-настройка-спутникового-интернета', 0, 4, 28, '/ru/подключение-и-настройка-спутникового-интернета', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 28, '3G и 4G интернета операторов мобильной связи Kyivstar, Life Cell и Vodafone', 'подключение-и-настройка-3g-и-4g-интернета-операторов-мобильной-связи-Kyivstar-Life-Cell-и-Vodafone', 0, 4, 29, '/ru/подключение-и-настройка-3g-и-4g-интернета-операторов-мобильной-связи-Kyivstar-Life-Cell-и-Vodafone', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 29, 'Дополнительные услуги:', 'separator', 1, 3, 30, ' ', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 30, 'Усиление 3G, 4G и GSM сигнала операторов мобильной связи Kyivstar, Life Cell и Vodafone', 'усиление-3g-4g-и-gsm-сигнала-операторов-мобильной-связи-kyivstar-life-cell-и-vodafone', 0, 4, 31, '/ru/усиление-3g-4g-и-gsm-сигнала-операторов-мобильной-связи-kyivstar-life-cell-и-vodafone', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 31, 'Домофонные системы', 'домофонные-системы', 0, 2, 32, '/ru/домофонные-системы', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 32, 'Усиление 3G, 4G и GSM', 'усиление-3g-4g-и-gsm', 0, 2, 33, '/ru/усиление-3g-4g-и-gsm-сигнала-операторов-мобильной-связи-kyivstar-life-cell-и-vodafone', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 33, 'Обслуживание ПК', 'корпоративное-компьютерное-обслуживание', 0, 2, 34, '/ru/корпоративное-компьютерное-обслуживание', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 34, 'Контакты', 'контакты', 0, 1, 35, '/ru/контакты', 1);
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 35, 'Комбинированного (спутникового и эфирного Т2) телевидения', 'подключение-и-настройка-комбинированного-спутникового-и-эфирного-т2-телевидения', 0, 4, 7, '/ru/подключение-и-настройка-комбинированного-спутникового-и-эфирного-т2-телевидения', 1);

-- ----------------------------
-- Table structure for modules
-- ----------------------------
DROP TABLE IF EXISTS "public"."modules";
CREATE TABLE "public"."modules" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL DEFAULT nextval('modules_id_seq'::regclass),
  "systemName" text COLLATE "pg_catalog"."default",
  "position" text COLLATE "pg_catalog"."default",
  "params" json,
  "device" float4,
  "enabled" bool
)
;

-- ----------------------------
-- Records of modules
-- ----------------------------
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 1, 'mod_slideshow', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 2, 'mod_menu', 'sidebarright', '{"menuSystemName":"mainmenu","ItemsLevel":"all","style":""}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 3, 'mod_menu', 'mainmenu', '{"menuSystemName":"mainmenu","ItemsLevel":"1","style":"uk-list uk-text-center","id":"mainmenu"}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571154569061, 1571154569061, 4, 'mod_custom_js', 'javascript', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571154569061, 1571154569061, 5, 'mod_custom_html', 'section1', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571154569061, 1571154569061, 6, 'mod_custom_html', 'section1', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571154569061, 1571154569061, 7, 'mod_custom_html', 'section1', '{}', 1, 'f');
INSERT INTO "public"."modules" VALUES (1571154569061, 1571154569061, 8, 'mod_custom_html', 'section1', '{}', 1, 'f');
INSERT INTO "public"."modules" VALUES (1571154569061, 1571154569061, 9, 'mod_custom_html', 'section1', '{}', 1, 'f');
INSERT INTO "public"."modules" VALUES (1571154569061, 1571154569061, 10, 'mod_custom_html', 'section1', '{}', 1, 'f');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 11, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 12, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 13, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 14, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 15, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 16, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 17, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 18, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 19, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 20, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 21, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 22, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 23, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 24, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 35, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 36, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 37, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 38, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 39, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 40, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 41, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 42, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 43, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 44, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 45, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 46, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 47, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 48, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 49, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 50, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 51, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 52, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 53, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 54, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 55, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 56, 'mod_custom_html', 'article', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 57, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 58, 'mod_custom_html', 'article', '{}', 1, 't');

-- ----------------------------
-- Table structure for modulestable
-- ----------------------------
DROP TABLE IF EXISTS "public"."modulestable";
CREATE TABLE "public"."modulestable" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL DEFAULT nextval('modulestable_id_seq'::regclass),
  "menuItemId" float4,
  "moduleId" float4
)
;

-- ----------------------------
-- Records of modulestable
-- ----------------------------
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 1, 1, 1);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 2, 1, 10);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 3, 1, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 4, 1, 4);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 5, 1, 9);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 6, 1, 5);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 7, 1, 6);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 8, 1, 7);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 9, 1, 8);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 10, 3, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 11, 3, 11);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 12, 3, 12);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 13, 3, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 14, 5, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 15, 5, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 16, 5, 13);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 17, 5, 14);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 18, 6, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 19, 6, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 20, 6, 15);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 21, 6, 16);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 22, 7, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 23, 7, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 24, 7, 17);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 25, 7, 18);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 26, 8, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 27, 8, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 28, 8, 19);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 29, 8, 20);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 30, 9, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 31, 9, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 32, 9, 21);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 33, 9, 22);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 34, 11, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 35, 11, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 36, 11, 23);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 37, 11, 24);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 38, 12, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 39, 12, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 42, 13, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 43, 13, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 58, 17, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 59, 17, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 60, 17, 35);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 61, 17, 36);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 62, 18, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 63, 18, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 64, 18, 37);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 65, 18, 38);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 66, 19, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 67, 19, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 68, 19, 39);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 69, 19, 40);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 70, 24, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 71, 24, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 72, 24, 41);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 73, 24, 42);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 74, 25, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 75, 25, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 76, 25, 43);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 77, 25, 44);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 78, 27, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 79, 27, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 80, 27, 45);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 81, 27, 46);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 82, 28, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 83, 28, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 84, 28, 47);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 85, 28, 48);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 86, 30, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 87, 30, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 88, 30, 49);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 89, 30, 50);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 90, 31, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 91, 31, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 92, 31, 51);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 93, 31, 52);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 94, 33, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 95, 33, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 96, 33, 53);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 97, 33, 54);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 98, 34, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 99, 34, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 100, 34, 55);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 101, 34, 56);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 102, 35, 2);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 103, 35, 3);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 104, 35, 57);
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 105, 35, 58);

-- ----------------------------
-- Table structure for slides
-- ----------------------------
DROP TABLE IF EXISTS "public"."slides";
CREATE TABLE "public"."slides" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL DEFAULT nextval('slides_id_seq'::regclass),
  "name" text COLLATE "pg_catalog"."default",
  "header" text COLLATE "pg_catalog"."default",
  "description" text COLLATE "pg_catalog"."default",
  "image" text COLLATE "pg_catalog"."default",
  "moduleId" float4,
  "link" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of slides
-- ----------------------------
INSERT INTO "public"."slides" VALUES (1571251343191, 1571251343191, 1, 'Слайд №1', 'Телевидение', 'Предоставляем полный спектр услуг по обеспечению высококачественного телевидения в следующих
                            форматах<br>
                            спутниковое телевидение, цифровое эфирное ТВ, IPTV', '/images/mainpage/slideshow/television.webp', 1, '/ru/телевидение');
INSERT INTO "public"."slides" VALUES (1571251343191, 1571251343191, 2, 'Слайд №2', 'Системы видеонаблюдения', 'Внедряем современные системы видео наблюдения на предприятиях, в офисах, домах и прочих
                            объектах. <br>Наша команда быстро и оперативно
                            осуществит
                            монтаж, подключение и настройку всего необходимого оборудования.', '/images/mainpage/slideshow/video-monitoring.webp', 1, '/');
INSERT INTO "public"."slides" VALUES (1571251343191, 1571251343191, 3, 'Слайд №3', 'Интернет', 'Оперативно осуществляем профессиональный, монтаж и настройку оборудования, <br>обеспечивающее
                            интернет, при любых погодных условиях.', '/images/mainpage/slideshow/internet.webp', 1, '/');
INSERT INTO "public"."slides" VALUES (1571251343191, 1571251343191, 4, 'Слайд №4', 'Домофонные системы', 'Дополнительная услуга нашей компании для обеспечения максимального комфорта и безопасности
                            <br>в вашем доме или предприятии, с системой контроля
                            на мобильных устройствах.', '/images/mainpage/slideshow/intercom.webp', 1, '/');
INSERT INTO "public"."slides" VALUES (1571251343191, 1571251343191, 5, 'Слайд №5', 'Уселители 3G | 4G | GSM', 'Дополнительная услуга для тех кому важна максимально качественная мобильная связь и 3G и 4G
                            интернет. <br>Наше
                            оборудование, значительно улучшит уровень сигнала мобильного оператора, в вашей местности.', '/images/mainpage/slideshow/gsmamplifier.webp', 1, '/');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
  "systemName" text COLLATE "pg_catalog"."default",
  "password" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES (1571251343191, 1571251343191, 1, 'Thinker', 'CiscoVA!%9000');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."archive_id_seq"
OWNED BY "public"."archive"."id";
SELECT setval('"public"."archive_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."customhtml_id_seq"
OWNED BY "public"."customhtml"."id";
SELECT setval('"public"."customhtml_id_seq"', 55, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."customjs_id_seq"
OWNED BY "public"."customjs"."id";
SELECT setval('"public"."customjs_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."languages_id_seq"
OWNED BY "public"."languages"."id";
SELECT setval('"public"."languages_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."menu_id_seq"
OWNED BY "public"."menu"."id";
SELECT setval('"public"."menu_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."menuitems_id_seq"
OWNED BY "public"."menuitems"."id";
SELECT setval('"public"."menuitems_id_seq"', 36, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."modules_id_seq"
OWNED BY "public"."modules"."id";
SELECT setval('"public"."modules_id_seq"', 59, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."modulestable_id_seq"
OWNED BY "public"."modulestable"."id";
SELECT setval('"public"."modulestable_id_seq"', 106, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."slides_id_seq"
OWNED BY "public"."slides"."id";
SELECT setval('"public"."slides_id_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_id_seq"
OWNED BY "public"."users"."id";
SELECT setval('"public"."users_id_seq"', 2, true);

-- ----------------------------
-- Primary Key structure for table archive
-- ----------------------------
ALTER TABLE "public"."archive" ADD CONSTRAINT "archive_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table customhtml
-- ----------------------------
ALTER TABLE "public"."customhtml" ADD CONSTRAINT "customhtml_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table customjs
-- ----------------------------
ALTER TABLE "public"."customjs" ADD CONSTRAINT "customjs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table languages
-- ----------------------------
ALTER TABLE "public"."languages" ADD CONSTRAINT "languages_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table menu
-- ----------------------------
ALTER TABLE "public"."menu" ADD CONSTRAINT "menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table menuitems
-- ----------------------------
ALTER TABLE "public"."menuitems" ADD CONSTRAINT "menuitems_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table modules
-- ----------------------------
ALTER TABLE "public"."modules" ADD CONSTRAINT "modules_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table modulestable
-- ----------------------------
ALTER TABLE "public"."modulestable" ADD CONSTRAINT "modulestable_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table slides
-- ----------------------------
ALTER TABLE "public"."slides" ADD CONSTRAINT "slides_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");
