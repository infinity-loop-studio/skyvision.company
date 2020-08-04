/*
 Navicat Premium Data Transfer

 Source Server         : 185.67.3.93_5432
 Source Server Type    : PostgreSQL
 Source Server Version : 110007
 Source Host           : 185.67.3.93:5432
 Source Catalog        : skyvision.company
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110007
 File Encoding         : 65001

 Date: 04/08/2020 04:16:02
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
            <a class="background-color-unset" href="/ru/телевидение">
              <img class="border-c" src="/images/mainpage/services/television.jpg" alt="">
            </a>
            <!--<div class="uk-transition-slide-left uk-position-cover uk-overlay custom-overlay-1 uk-flex uk-flex-center uk-flex-middle uk-width-1-1@l">
              <p class="uk-h4 uk-margin-remove">
                <button class="uk-button uk-button-danger">Заказать</button>
              </p>
            </div>-->
          </div>
        </div>
        <div class="uk-card-body uk-padding-remove-left uk-padding-remove-right">
          <h3 class="uk-card-title"><a class="background-color-unset" href="/ru/телевидение">Телевидение</a></h3>
          <p>
            <a class="background-color-unset" href="/ru/подключение-и-настройка-спутникового-телевидения">1. Спутниковое ТВ</a> |
            <a class="background-color-unset" href="/ru/подключение-и-настройка-цифрового-эфирного-телевидения-т2">2. Эфирное ТВ (Т2)</a> |
            <a class="background-color-unset" href="/ru/подключение-и-настройка-комбинированного-спутникового-и-эфирного-т2-телевидения">3. Спутниковое + эфирное</a> |
            <a class="background-color-unset" href="/ru/подключение-и-настройка-интернет-телевидения-iptv-ott">4. IPTV (OTT)</a> |
            <a class="background-color-unset" href="/ru/подключение-и-настройка-viasat">5. Viasat</a> |
            <a class="background-color-unset" href="/ru/подключение-и-настройка-extra-tv">6. Extra TV</a>
          </p>
          <a href="/ru/телевидение" class="uk-button uk-button-secondary">Перейти в раздел</a>
        </div>
      </div>
    </div>
    <div>
      <div class="uk-card">
        <div class="uk-card-media-top">
          <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
            <span class="uk-label uk-position-top-right uk-position-small custom-background-1">Раздел в разработке</span>
            <a class="background-color-unset" href="/ru/интернет">
              <img class="border-c" src="/images/mainpage/services/internet.jpg" alt="">
            </a>
            <!--<div class="uk-transition-slide-left uk-position-cover uk-overlay custom-overlay-1 uk-flex uk-flex-center uk-flex-middle uk-width-1-1@l">
              <p class="uk-h4 uk-margin-remove">
                <button class="uk-button uk-button-danger">Заказать</button>
              </p>
            </div>-->
          </div>
        </div>
        <div class="uk-card-body uk-padding-remove-left uk-padding-remove-right">
          <h3 class="uk-card-title"><a class="background-color-unset" href="/ru/интернет">Интерент</a></h3>
          <p>
            <a class="background-color-unset" href="/ru/подключение-и-настройка-спутникового-интернета">1. Спутниковый</a> |
            <a class="background-color-unset" href="/ru/подключение-и-настройка-3g-и-4g-интернета-операторов-мобильной-связи-Kyivstar-Life-Cell-и-Vodafone">2. Мобильный 3G и 4G</a> |
            <a class="background-color-unset" href="/ru/усиление-3g-4g-и-gsm-сигнала-операторов-мобильной-связи-kyivstar-life-cell-и-vodafone">3. Усиление 3G, 4G и GSM сигнала</a>
          </p>
          <a href="/ru/интернет" class="uk-button uk-button-secondary">Перейти в раздел</a>
        </div>
      </div>
    </div>
    <div>
      <div class="uk-card">
        <div class="uk-card-media-top">
          <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
            <span class="uk-label uk-position-top-right uk-position-small custom-background-1">Раздел в разработке</span>
            <a class="background-color-unset" href="/ru/видеонаблюдение">
              <img class="border-c" src="/images/mainpage/services/monitoring.jpg" alt="">
            </a>
            <!--<div class="uk-transition-slide-left uk-position-cover uk-overlay custom-overlay-1 uk-flex uk-flex-center uk-flex-middle uk-width-1-1@l">
              <p class="uk-h4 uk-margin-remove">
                <button class="uk-button uk-button-danger">Заказать</button>
              </p>
            </div>-->
          </div>
        </div>
        <div class="uk-card-body uk-padding-remove-left uk-padding-remove-right">
          <h3 class="uk-card-title"><a class="background-color-unset" href="/ru/видеонаблюдение">Видео наблюдение</a></h3>
          <p>
            <a class="background-color-unset" href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#проводные">1. Проводное</a> |
            <a class="background-color-unset" href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#безпроводные">2. Беспроводное</a> |
            <a class="background-color-unset" href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#комбинированные">3. Комбинированное</a> |
            <a class="background-color-unset" href="/ru/модернизация-настройка-и-ремонт-систем-видеонаблюдения">4. Модернизация, настройка и ремонт видеонаблюдения</a>
          </p>
          <a href="/ru/видеонаблюдение" class="uk-button uk-button-secondary">Перейти в раздел</a>
        </div>
      </div>
    </div>
    <div class="uk-grid-margin uk-first-column">
      <div class="uk-card">
        <div class="uk-card-media-top">
          <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
            <span class="uk-label uk-position-top-right uk-position-small custom-background-1">Раздел в разработке</span>
            <a class="background-color-unset" href="/ru/домофонные-системы">
              <img class="border-c" src="/images/mainpage/services/intercom.jpg" alt="">
            </a>
            <!--<div class="uk-transition-slide-left uk-position-cover uk-overlay custom-overlay-1 uk-flex uk-flex-center uk-flex-middle uk-width-1-1@l">
              <p class="uk-h4 uk-margin-remove">
                <button class="uk-button uk-button-danger">Заказать</button>
              </p>
            </div>-->
          </div>
        </div>
        <div class="uk-card-body uk-padding-remove-left uk-padding-remove-right">
          <h3 class="uk-card-title"><a class="background-color-unset" href="/ru/домофонные-системы">Домофонные системы</a></h3>
          <p>Установка домофонной системы, дома и на предриятии.</p>
          <a href="/ru/домофонные-системы" class="uk-button uk-button-secondary">Перейти в раздел</a>
        </div>
      </div>
    </div>
    <div class="uk-grid-margin">
      <div class="uk-card">
        <div class="uk-card-media-top">
          <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
            <span class="uk-label uk-position-top-right uk-position-small custom-background-1">Раздел в разработке</span>
            <a class="background-color-unset" href="/ru/усиление-3g-4g-и-gsm-сигнала-операторов-мобильной-связи-kyivstar-life-cell-и-vodafone">
              <img class="border-c" src="/images/mainpage/services/amplifier.jpg" alt="">
            </a>
            <!--<div class="uk-transition-slide-left uk-position-cover uk-overlay custom-overlay-1 uk-flex uk-flex-center uk-flex-middle uk-width-1-1@l">
              <p class="uk-h4 uk-margin-remove">
                <button class="uk-button uk-button-danger">Заказать</button>
              </p>
            </div>-->
          </div>
        </div>
        <div class="uk-card-body uk-padding-remove-left uk-padding-remove-right">
          <h3 class="uk-card-title"><a class="background-color-unset" href="/ru/усиление-3g-4g-и-gsm-сигнала-операторов-мобильной-связи-kyivstar-life-cell-и-vodafone">Усиление 3G, 4G и GSM</a></h3>
          <p>Усиление сигнала мобильного опреатора.</p>
          <a href="/ru/усиление-3g-4g-и-gsm-сигнала-операторов-мобильной-связи-kyivstar-life-cell-и-vodafone" class="uk-button uk-button-secondary">Перейти в раздел</a>
        </div>
      </div>
    </div>
    <div class="uk-grid-margin">
      <div class="uk-card">
        <div class="uk-card-media-top">
          <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
            <span class="uk-label uk-position-top-right uk-position-small custom-background-1">Раздел в разработке</span>
            <a class="background-color-unset" href="/ru/корпоративное-компьютерное-обслуживание">
              <img class="border-c" src="/images/mainpage/services/pc.jpg" alt="">
            </a>
            <!--<div class="uk-transition-slide-left uk-position-cover uk-overlay custom-overlay-1 uk-flex uk-flex-center uk-flex-middle uk-width-1-1@l">
              <p class="uk-h4 uk-margin-remove">
                <button class="uk-button uk-button-danger">Заказать</button>
              </p>
            </div>-->
          </div>
        </div>
        <div class="uk-card-body uk-padding-remove-left uk-padding-remove-right">
          <h3 class="uk-card-title"><a class="background-color-unset" href="/ru/корпоративное-компьютерное-обслуживание">Обслуживание ПК</a></h3>
          <p>Настройка и обслуживание компьютерной техники.</p>
          <a href="/ru/корпоративное-компьютерное-обслуживание" class="uk-button uk-button-secondary">Перейти в раздел</a>
        </div>
      </div>
    </div>
  </div>
</div>
', 5);
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
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 31, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Демонтаж спутниковой антены</h1>
    
    
    
    
  </div>
</div>', 35);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 45, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Усиление 3G, 4G и GSM сигнала операторов<br>
мобильной связи Kyivstar, Life Cell и Vodafone</h1>
    
    
    
    
  </div>
</div>', 49);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 46, '<div class="uk-text-bold uk-alert-danger uk-alert" uk-alert="">
  <p>Скоро тут появится вся необходимая информация. Звоните нам, и мы ответим на все вопросы.</p>
</div>', 50);
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
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 8, '<div uk-grid>
  <div class="uk-width-1-2@l uk-width-1-1@s">
    <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
      <a href="/ru/подключение-и-настройка-спутникового-телевидения">
        <img src="/images/television/articles/article-1.webp">
      </a>
    </div>
    <h2 class="uk-margin-small-top">
      <a href="/ru/подключение-и-настройка-спутникового-телевидения">
        Подключение и настройка спутникового телевидения
      </a>
    </h2>
    <p></p>
    <a href="/ru/подключение-и-настройка-спутникового-телевидения" class="uk-button uk-button-secondary">Читать материал</a>
  </div>
  <div class="uk-width-1-2@l uk-width-1-1@s">
    <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
      <a href="/ru/подключение-и-настройка-цифрового-эфирного-телевидения-т2">
        <img src="/images/television/articles/article-2.webp">
      </a>
    </div>
    <h2 class="uk-margin-small-top">
      <a href="/ru/подключение-и-настройка-цифрового-эфирного-телевидения-т2">
        Подключение и настройка цифрового эфирного телевидения (Т2)
      </a>
    </h2>
    <p></p>
    <a href="/ru/подключение-и-настройка-цифрового-эфирного-телевидения-т2" class="uk-button uk-button-secondary">Читать материал</a>
  </div>
</div>
<hr class="uk-divider-icon">
<div uk-grid>
  <div class="uk-width-1-2@l uk-width-1-1@s">
    <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
      <a href="/ru/подключение-и-настройка-комбинированного-спутникового-и-эфирного-т2-телевидения">
        <img src="/images/television/articles/article-3.webp">
      </a>
    </div>
    <h2 class="uk-margin-small-top">
      <a href="/ru/подключение-и-настройка-комбинированного-спутникового-и-эфирного-т2-телевидения">
        Подключение и настройка комбинированного (спутникового и эфирного Т2) телевидения
      </a>
    </h2>
    <p></p>
    <a href="/ru/подключение-и-настройка-комбинированного-спутникового-и-эфирного-т2-телевидения" class="uk-button uk-button-secondary">Читать материал</a>
  </div>
  <div class="uk-width-1-2@l uk-width-1-1@s">
    <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
      <a href="/ru/подключение-и-настройка-интернет-телевидения-iptv-ott">
        <img src="/images/television/articles/article-4.webp">
      </a>
    </div>
    <h2 class="uk-margin-small-top">
      <a href="/ru/подключение-и-настройка-интернет-телевидения-iptv-ott">
        Подключение и настройка интернет телевидения (IPTV, OTT)
      </a>
    </h2>
    <p></p>
    <a href="/ru/подключение-и-настройка-интернет-телевидения-iptv-ott" class="uk-button uk-button-secondary">Читать материал</a>
  </div>
</div>
<hr class="uk-divider-icon">
<div uk-grid>
  <div class="uk-width-1-2@l uk-width-1-1@s">
    <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
      <a href="/ru/подключение-и-настройка-viasat">
        <img src="/images/television/articles/article-5.webp">
      </a>
    </div>
    <h2 class="uk-margin-small-top">
      <a href="/ru/подключение-и-настройка-viasat">
        Подключение и настройка Viasat
      </a>
    </h2>
    <p></p>
    <a href="/ru/подключение-и-настройка-viasat" class="uk-button uk-button-secondary">Читать материал</a>
  </div>
  <div class="uk-width-1-2@l uk-width-1-1@s">
    <div class="uk-inline-clip uk-transition-toggle" tabindex="0">
      <a href="/ru/подключение-и-настройка-extra-tv">
        <img src="/images/television/articles/article-6.webp">
      </a>
    </div>
    <h2 class="uk-margin-small-top">
      <a href="/ru/подключение-и-настройка-extra-tv">
        Подключение и настройка Extra TV
      </a>
    </h2>
    <p></p>
    <a href="/ru/подключение-и-настройка-extra-tv" class="uk-button uk-button-secondary">Читать материал</a>
  </div>
</div>
', 12);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 9, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Подключение и настройка<br>
спутникового телевидения</h1>
    
    
    
    
  </div>
</div>', 13);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 11, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Подключение и настройка<br>
цифрового эфирного телевидения (Т2)</h1>
    
    
    
    
  </div>
</div>', 15);
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
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 17, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Подключение и настройка<br>
Extra TV</h1>
    
    
    
    
  </div>
</div>', 21);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 19, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Модернизация,настройка и<br>
ремонт спутниковой антены</h1>
    
    
    
    
  </div>
</div>', 23);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 20, '<div class="uk-text-bold uk-alert-danger uk-alert" uk-alert="">
  <p>Скоро тут появится вся необходимая информация. Звоните нам, и мы ответим на все вопросы.</p>
</div>', 24);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 21, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Ремонт, настройка и прошивка<br>
спутниковых тюнеров (ресиверов)</h1>
    
    
    
    
  </div>
</div>', 25);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 23, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Модернизация, настройка и ремонт оборудования<br>
для цифрового эфирного телевидения (Т2)</h1>
    
    
    
    
  </div>
</div>', 27);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 25, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Megogo</h1>
    
    
    
    
  </div>
</div>', 29);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 27, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">OLL TV</h1>
    
    
    
    
  </div>
</div>', 31);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 29, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Divan TV</h1>
    
    
    
    
  </div>
</div>', 33);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 12, '<h2>Цены</h2><h3 class="red-color uk-text-bold uk-text-uppercase">Комплект на 1ТВ (Пассивная антена + тюнер)</h3>
<div class="uk-grid-small" uk-grid>
  <div class="uk-width-expand" uk-leader><i class="fas fa-broadcast-tower"></i></div>
  <div class="uk-width-1-5" uk-leader><i class="fas fa-tv"></i></div>
  <div class="uk-width-1-4">Цена: 1650 - 1900 грн.</i></div>
</div><p class="uk-text-meta uk-margin-small-top">* В данной комплектации используется пассивная антена для одного телевизора. Растояние между вышкой и антеной должно быть <span class="red-color uk-text-bold">не больше  20  км</span>.
  В комплекте идёт 10 метров коаксиального кабеля. Это самое бюджетное решение для одного телевизора.</p><h3 class="red-color uk-text-bold uk-text-uppercase">Комплект на 1ТВ (антена с усилителем + тюнер)</h3>
<div class="uk-grid-small" uk-grid>
  <div class="uk-width-expand" uk-leader><i class="fas fa-broadcast-tower red-color"></i></div>
  <div class="uk-width-1-5" uk-leader><i class="fas fa-tv"></i></div>
  <div class="uk-width-1-4">Цена: 1750 - 2000 грн.</i></div>
</div><p class="uk-text-meta uk-margin-small-top">* В данной комплектации используется антена с усилителем для одного телевизора. Растояние между вышкой и антеной должно быть <span class="red-color uk-text-bold">не  больше  40 км</span>.
  В комплекте идёт 10 метров коаксиального кабеля.</p><h3 class="red-color uk-text-bold uk-text-uppercase">Комплект на 1ТВ(пассивная антена + внешний усилитель)</h3>
<div class="uk-grid-small" uk-grid>
  <div class="uk-width-expand" uk-leader><i class="fas fa-broadcast-tower"></i> + <span class="red-color">УСИЛИТЕЛЬ</span></div>
  <div class="uk-width-1-5" uk-leader><i class="fas fa-tv"></i></div>
  <div class="uk-width-1-4">Цена: 2150 - 2400 грн.</i></div>
</div><p class="uk-text-meta uk-margin-small-top">* В данной комплектации используется пасивная антена с внешним усилителем для одного телевизора. Растояние между вышкой и антеной должно быть <span
  class="red-color uk-text-bold">не больше 80 км</span>. В комплекте идёт 10 метров коаксиального кабеля.</p>
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
    <td>2 ТВ</td>
    <td class="uk-text-truncate">2800 - 3200 грн.</td>
  </tr>
  <tr>
    <td>3 ТВ</td>
    <td class="uk-text-truncate">3700 - 4100 грн.</td>
  </tr>
  <tr>
    <td>4 ТВ</td>
    <td class="uk-text-truncate">4500 - 4900 грн.</td>
  </tr>
  <tr>
    <td>5 ТВ</td>
    <td class="uk-text-truncate">5300 - 5700 грн.</td>
  </tr>
  </tbody>
</table>
<h2>Что входит в указанную стоимость</h2>
<dl class="uk-description-list uk-description-list-divider">
  <dt>Выезд мастера</dt>
  <dd>После того как вы согласуете все детали вашего подключения по телефону, наш мастер выедет к вам на объект.</dd>
  <dt>Оборудование</dt>
  <dd>Комплектация зависит от : 1. Растояния между вышкой и местом монтажа антены, высоты на которой будет размещена антена, окружающей среды и наличия других радио устройств. Комплект по самой низкой цене является
    опциональным и применяется в тех местах где уселение не нужно и качество сигнала высокое. В большинстве случаев используется комплектация с усилителем сигнала.
  </dd>
  <dt>Монтаж и настройка</dt>
  <dd>Собрав всю необходимую информацию о подключении, наш мастер, со всем необходимым оборудованием для подключения эфирного (DVB-T2) телевидения, приедет к вам на объект. После чего он осуществит монтаж антены и её
    настройку. Далее монтажник отведёт нужное количество кабеля до места размещения телевизора. Окончательным этапом является подключение тюнера и его настройка.
  </dd>
</dl>

<div class="aditional-info">
  <h2>Дополнительная информация</h2>
  <h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения без абонентской платы</h3>
  <ul class="uk-list"><a href="/ru/подключение-и-настройка-спутникового-телевидения">
    <li><i class="fas fa-external-link-alt"></i> Подключение и настройка спутникового телевидения</li>
  </a>
    <p class="uk-text-meta uk-margin-remove">* В данном подключении с 20.01.2020 г. не будет основных украинских каналов</p>  <a href="/ru/подключение-и-настройка-комбинированного-спутникового-и-эфирного-т2-телевидения">
      <li class="uk-padding-small uk-padding-remove-left uk-padding-remove-bottom"><i class="fas fa-external-link-alt"></i> Подключение и настройка комбинированного (спутникового и эфирного DVB-T2) телевидения</li>
    </a><span class="red-color">(В классическом DVB-T2 подключении идёт 32 канала в комбинированном идёт 100 каналов)</span></ul>
  <h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения всех каналов c
    абонентской платой</h3>
  <ul class="uk-list"><a href="/ru/подключение-и-настройка-viasat">
    <li><i class="fas fa-external-link-alt"></i> Подключение и настройка Viasat</li>
  </a> <a href="/ru/лючение-и-настройка-extra-tv">
    <li class="uk-padding-small uk-padding-remove-left"><i class="fas fa-external-link-alt"></i> Подключение и настройка Extra TV</li>
  </a> <a href="/ru/подключение-и-настройка-интернет-телевидения-iptv-ott">
    <li><i class="fas fa-external-link-alt"></i>Подключение и настройка интернет телевидения (IPTV, OTT)</li>
  </a></ul>
</div>', 16);
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

<div class="aditional-info">
  <h2>Дополнительная информация</h2>
  <h3 class="red-color uk-text-bold uk-text-uppercase" id="coded_channels">Список закодированных каналов</h3>
  <p>1+1 Media («1+1», «2+2», «ТЕТ», «ПлюсПлюс», «Бігуді», «УНІАН ТБ»).</p>
  <p>Медиа Группа Украина (ТРК Украина, НЛО ТВ, Индиго, Эскулап ТВ).</p>
  <p>StarLightMedia (СТБ, ICTV, Новий канал, М1, М2, ОЦЕ).</p>
  <p>Inter Media Group (Интер, НТН, К1, К2, Мега, Пиксель, Zoom, Enter-фильм).</p>
  <p class="uk-margin-remove uk-text-meta">* <span class="red-color">Данные каналы будут платными только в сегменте спутниковго телевидения</span>. В сегменте цифрового эфирного телевидения эти каналы доступны бесплатно.
  </p>
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
  <ul class="uk-list uk-margin-remove-bottom">
    <a href="/ru/подключение-и-настройка-viasat">
      <li><i class="fa-external-link-alt fas"></i> Подключение и настройка Viasat</li>
    </a>
    <a href="/ru/лючение-и-настройка-extra-tv">
      <li class="uk-padding-remove-left uk-padding-small"><i class="fa-external-link-alt fas"></i> Подключение и настройка Extra TV</li>
    </a>
    <a href="/ru/подключение-и-настройка-интернет-телевидения-iptv-ott">
      <li><i class="fa-external-link-alt fas"></i>Подключение и настройка интернет телевидения (IPTV, OTT)</li>
    </a>
  </ul>
</div>
', 14);
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
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 34, '<div class="uk-text-bold uk-alert-danger uk-alert" uk-alert="">
  <p>Скоро тут появится вся необходимая информация. Звоните нам, и мы ответим на все вопросы.</p>
</div>

<div class="uk-inline-clip uk-transition-toggle" tabindex="0">
  <span class="uk-label uk-position-top-right uk-position-small custom-background-1">Раздел в разработке</span>
  <a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#проводные">
    <img src="/images/no-image.jpg">
  </a>
</div>
<h2 class="uk-margin-small-top">
  <a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#проводные">
    Проектирование и монтаж проводных систем видеонаблюдения
  </a>
</h2>
<p></p>
<a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#проводные" class="uk-button uk-button-secondary">Читать материал</a>
<hr class="uk-divider-icon">

<div class="uk-inline-clip uk-transition-toggle" tabindex="0">
  <span class="uk-label uk-position-top-right uk-position-small custom-background-1">Раздел в разработке</span>
  <a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#безпроводные">
    <img src="/images/no-image.jpg">
  </a>
</div>
<h2 class="uk-margin-small-top">
  <a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#безпроводные">
    Проектирование и монтаж безпроводных систем видеонаблюдения
  </a>
</h2>
<p></p>
<a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#безпроводные" class="uk-button uk-button-secondary">Читать материал</a>
<hr class="uk-divider-icon">

<div class="uk-inline-clip uk-transition-toggle" tabindex="0">
  <span class="uk-label uk-position-top-right uk-position-small custom-background-1">Раздел в разработке</span>
  <a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#комбинированные">
    <img src="/images/no-image.jpg">
  </a>
</div>
<h2 class="uk-margin-small-top">
  <a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#комбинированные">
    Проектирование и монтаж комбинированных систем видеонаблюдения
  </a>
</h2>
<p></p>
<a href="/ru/проектирование-и-монтаж-систем-видеонаблюдения#комбинированные" class="uk-button uk-button-secondary">Читать материал</a>
<hr class="uk-divider-icon">

<div class="uk-inline-clip uk-transition-toggle" tabindex="0">
  <span class="uk-label uk-position-top-right uk-position-small custom-background-1">Раздел в разработке</span>
  <a href="/ru/модернизация-настройка-и-ремонт-систем-видеонаблюдения">
    <img src="/images/no-image.jpg">
  </a>
</div>
<h2 class="uk-margin-small-top">
  <a href="/ru/модернизация-настройка-и-ремонт-систем-видеонаблюдения">
    Модернизация, настройка и ремонт систем видеонаблюдения
  </a>
</h2>
<p></p>
<a href="/ru/модернизация-настройка-и-ремонт-систем-видеонаблюдения" class="uk-button uk-button-secondary">Читать материал</a>
', 38);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 35, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Проектирование и монтаж<br>
систем видеонаблюдения</h1>
    
    
    
    
  </div>
</div>', 39);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 36, '<div class="uk-text-bold uk-alert-danger uk-alert" uk-alert="">
  <p>Скоро тут появится вся необходимая информация. Звоните нам, и мы ответим на все вопросы.</p>
</div>', 40);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 37, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Модернизация, настройка и ремонт<br>
систем видеонаблюдения</h1>
    
    
    
    
  </div>
</div>', 41);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 38, '<div class="uk-text-bold uk-alert-danger uk-alert" uk-alert="">
  <p>Скоро тут появится вся необходимая информация. Звоните нам, и мы ответим на все вопросы.</p>
</div>', 42);
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
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 40, '<div class="uk-text-bold uk-alert-danger uk-alert" uk-alert="">
  <p>Скоро тут появится вся необходимая информация. Звоните нам, и мы ответим на все вопросы.</p>
</div>

<div class="uk-inline-clip uk-transition-toggle" tabindex="0">
  <span class="uk-label uk-position-top-right uk-position-small custom-background-1">Раздел в разработке</span>
  <a href="/ru/подключение-и-настройка-спутникового-интернета">
    <img src="/images/no-image.jpg">
  </a>
</div>
<h2 class="uk-margin-small-top"><a href="/ru/подключение-и-настройка-спутникового-интернета">Подключение и настройка спутникового интернета</a></h2>
<p></p>
<a href="/ru/подключение-и-настройка-спутникового-интернета" class="uk-button uk-button-secondary">Читать материал</a>
<hr class="uk-divider-icon">

<div class="uk-inline-clip uk-transition-toggle" tabindex="0">
  <span class="uk-label uk-position-top-right uk-position-small custom-background-1">Раздел в разработке</span>
  <a href="/ru/подключение-и-настройка-3g-и-4g-интернета-операторов-мобильной-связи-Kyivstar-Life-Cell-и-Vodafone">
    <img src="/images/no-image.jpg">
  </a>
</div>
<h2 class="uk-margin-small-top">
  <a href="/ru/подключение-и-настройка-3g-и-4g-интернета-операторов-мобильной-связи-Kyivstar-Life-Cell-и-Vodafone">
    Подключение и настройка 3G и 4G интернета операторов мобильной связи Kyivstar, Life Cell и Vodafone
  </a>
</h2>
<p></p>
<a href="/ru/подключение-и-настройка-3g-и-4g-интернета-операторов-мобильной-связи-Kyivstar-Life-Cell-и-Vodafone" class="uk-button uk-button-secondary">Читать материал</a>
<hr class="uk-divider-icon">

<div class="uk-inline-clip uk-transition-toggle" tabindex="0">
  <span class="uk-label uk-position-top-right uk-position-small custom-background-1">Раздел в разработке</span>
  <a href="/ru/усиление-3g-4g-и-gsm-сигнала-операторов-мобильной-связи-kyivstar-life-cell-и-vodafone">
    <img src="/images/no-image.jpg">
  </a>
</div>
<h2 class="uk-margin-small-top">
  <a href="/ru/усиление-3g-4g-и-gsm-сигнала-операторов-мобильной-связи-kyivstar-life-cell-и-vodafone">
    Усиление 3G, 4G и GSM сигнала операторов мобильной связи Kyivstar, Life Cell и Vodafone
  </a>
</h2>
<p></p>
<a href="/ru/усиление-3g-4g-и-gsm-сигнала-операторов-мобильной-связи-kyivstar-life-cell-и-vodafone" class="uk-button uk-button-secondary">Читать материал</a>
', 44);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 41, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Подключение и настройка<br>
спутникового интернета</h1>
    
    
    
    
  </div>
</div>', 45);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 42, ' <div class="uk-text-bold uk-alert-danger uk-alert" uk-alert="">
  <p>Скоро тут появится вся необходимая информация. Звоните нам, и мы ответим на все вопросы.</p>
</div>', 46);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 43, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Подключение и настройка 3G и 4G интернета <br>
операторов мобильной связи Kyivstar, Life Cell и Vodafone</h1>
    
    
    
    
  </div>
</div>', 47);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 44, '<div class="uk-text-bold uk-alert-danger uk-alert" uk-alert="">
  <p>Скоро тут появится вся необходимая информация. Звоните нам, и мы ответим на все вопросы.</p>
</div>', 48);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 47, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Домофонные системы</h1>
    
    
    
    
  </div>
</div>', 51);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 48, ' <div class="uk-text-bold uk-alert-danger uk-alert" uk-alert="">
  <p>Скоро тут появится вся необходимая информация. Звоните нам, и мы ответим на все вопросы.</p>
</div>', 52);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 49, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Обслуживание ПК</h1>
    
    
    
    
  </div>
</div>', 53);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 50, ' <div class="uk-text-bold uk-alert-danger uk-alert" uk-alert="">
  <p>Скоро тут появится вся необходимая информация. Звоните нам, и мы ответим на все вопросы.</p>
</div>', 54);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 51, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">
  <div class="uk-width-1-1@l uk-padding uk-first-column">
    <h1 class="uk-margin-small page-header">Контакты</h1>
    
    
    
    
  </div>
</div>', 55);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 52, '<div class="uk-text-bold uk-alert-danger uk-alert" uk-alert="">
  <p>Скоро тут появится вся необходимая информация. Звоните нам, и мы ответим на все вопросы.</p>
</div>', 56);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 53, '<div id="televisionpage-header-section" uk-grid="" class="uk-grid uk-grid-stack uk-light">  <div class="uk-width-1-1@l uk-padding uk-first-column">    <h1 class="uk-margin-small page-header">Подключение и настройка комбинированного (эфирного и спутникового) телевидения</h1>                  </div></div>', 57);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 14, '<ul uk-accordion>
  <li class="uk-open"><a style=" margin-left: -30px; " class="uk-accordion-title" href="#"><h2
    class="uk-margin-remove text-underline">
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
    </div>
  </li>
</ul>

<div class="aditional-info">
  <h2>Дополнительная информация</h2>
  <h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения без
    абонентской платы</h3>

  <ul class="uk-list">
    <a href="/ru/подключение-и-настройка-спутникового-телевидения">
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
</div>
', 18);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 54, '<h2>Цены</h2><h3 class="red-color uk-text-bold uk-text-uppercase">Комплект на 1ТВ (Спутниковая + пассивная эфирная антена + комбинированный тюнер)</h3>
<div class="uk-grid-small" uk-grid>
  <div class="uk-width-expand" uk-leader><i class="fas fa-satellite-dish"></i> + <i class="fas fa-broadcast-tower"></i></div>
  <div class="uk-width-1-5" uk-leader><i class="fas fa-tv"></i></div>
  <div class="uk-width-1-4">Цена: 2900 - 3150 грн.</i></div>
</div><p class="uk-text-meta uk-margin-small-top">* В данной комплектации используется пассивная антена для одного телевизора. Для обеспечения уверенного приёма и качественной картинки растояние между эфирной вышкой и
  приёмной антеной Т2 должно быть <span class="red-color uk-text-bold">не больше 20 км</span>. В комплекте идёт 10 метров коаксиального кабеля.</p><h3 class="red-color uk-text-bold uk-text-uppercase">Комплект на 1ТВ
  (Спутниковая + активная эфирная антена с усилителем + комбинированный тюнер)</h3>
<div class="uk-grid-small" uk-grid>
  <div class="uk-width-expand" uk-leader><i class="fas fa-satellite-dish"></i> + <i class="fas fa-broadcast-tower red-color"></i></div>
  <div class="uk-width-1-5" uk-leader><i class="fas fa-tv"></i></div>
  <div class="uk-width-1-4">Цена: 3000 - 3250 грн.</i></div>
</div><p class="uk-text-meta uk-margin-small-top">* В данной комплектации используется антена с усилителем для одного телевизора. Для обеспечения уверенного приёма и качественной картинки растояние между эфирной вышкой и
  приёмной антеной Т2 должно быть <span class="red-color uk-text-bold">не  больше  40 км</span>. В комплекте идёт 10 метров коаксиального кабеля.</p><h3 class="red-color uk-text-bold uk-text-uppercase">Комплект на
  1ТВ(Спутниковая + пассивная эфирная антена + внешний усилитель + комбинированный тюнер)</h3>
<div class="uk-grid-small" uk-grid>
  <div class="uk-width-expand" uk-leader><i class="fas fa-satellite-dish"></i> + <i class="fas fa-broadcast-tower"></i> + <span class="red-color">УСИЛИТЕЛЬ</span></div>
  <div class="uk-width-1-5" uk-leader><i class="fas fa-tv"></i></div>
  <div class="uk-width-1-4">Цена: 3400 - 3650 грн.</i></div>
</div><p class="uk-text-meta uk-margin-small-top">* В данной комплектации используется пасивная антена с внешним усилителем для одного телевизора. Для обеспечения уверенного приёма и качественной картинки растояние между
  эфирной вышкой и приёмной антеной Т2 должно быть <span class="red-color uk-text-bold">не больше 80 км</span>. В комплекте идёт 10 метров коаксиального кабеля.</p>
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
    <td>2 ТВ</td>
    <td class="uk-text-truncate">4900 - 5300 грн.</td>
  </tr>
  <tr>
    <td>3 ТВ</td>
    <td class="uk-text-truncate">5800 - 6200 грн.</td>
  </tr>
  <tr>
    <td>4 ТВ</td>
    <td class="uk-text-truncate">6600 - 7000 грн.</td>
  </tr>
  <tr>
    <td>5 ТВ</td>
    <td class="uk-text-truncate">7400 - 7800 грн.</td>
  </tr>
  </tbody>
</table>
<h2>Что входит в указанную стоимость</h2>
<dl class="uk-description-list uk-description-list-divider">
  <dt>Выезд мастера</dt>
  <dd>После того как вы согласуете все детали вашего подключения по телефону, наш мастер выедет к вам на объект.</dd>
  <dt>Оборудование</dt>
  <dd>Комплектация зависит от : 1. Растояния между вышкой и местом монтажа антены, высоты на которой будет размещена антена, окружающей среды и наличия других радио устройств. Комплект по самой низкой цене является
    опциональным и применяется в тех местах где уселение не нужно и качество сигнала высокое. В большинстве случаев используется комплектация с усилителем сигнала. <span class="red-color">Эти условия не относится к подключению спутниковой антены</span>.
  </dd>
  <dt>Монтаж и настройка</dt>
  <dd>Собрав всю необходимую информацию о подключении, наш мастер, со всем необходимым оборудованием для подключения комбинированного спутиникового + эфирного (DVB-T2) телевидения, приедет к вам на объект. После чего он
    осуществит монтаж антен и их настройку. Далее монтажник отведёт нужное количество кабеля до места размещения телевизора. Окончательным этапом является подключение тюнера и его настройка.
  </dd>
</dl>

<div class="aditional-info">
  <h2>Дополнительная информация</h2>
  <h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения без абонентской платы</h3>
  <ul class="uk-list"><a href="/ru/подключение-и-настройка-спутникового-телевидения">
    <li><i class="fas fa-external-link-alt"></i> Подключение и настройка спутникового телевидения</li>
  </a>
    <p class="uk-text-meta uk-margin-remove">* В данном подключении с 20.01.2020 г. не будет основных украинских каналов</p>  <a href="/ru/подключение-и-настройка-цифрового-эфирного-телевидения-т2">
      <li class="uk-padding-small uk-padding-remove-left uk-padding-remove-bottom"><i class="fas fa-external-link-alt"></i> Подключение и настройка цифрового эфирного телевидения (DVB-T2)</li>
    </a></ul>
  <h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения всех каналов c абонентской платой</h3>
  <ul class="uk-list"><a href="/ru/подключение-и-настройка-viasat">
    <li><i class="fas fa-external-link-alt"></i> Подключение и настройка Viasat</li>
  </a> <a href="/ru/лючение-и-настройка-extra-tv">
    <li class="uk-padding-small uk-padding-remove-left"><i class="fas fa-external-link-alt"></i> Подключение и настройка Extra TV</li>
  </a> <a href="/ru/подключение-и-настройка-интернет-телевидения-iptv-ott">
    <li><i class="fas fa-external-link-alt"></i>Подключение и настройка интернет телевидения (IPTV, OTT)</li>
  </a></ul>
</div>', 58);
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

<div class="aditional-info">
  <h2>Что входит в указанную стоимость</h2>
  <dl class="uk-description-list uk-description-list-divider">
    <dt>Выезд мастера</dt>
    <dd>После того как вы согласуете все детали вашего подключения по телефону, наш мастер выедет к вам на объект.</dd>
    <dt>Оборудование</dt>
    <dd>К примеру вы выбрали комплект №4 на четыре телевизора за 5300 грн. В эту сумму будут включены четыре тюнера, параболическая антена, три антенных передатчика и сплиттер на четыре телевизора.</dd>
    <dt>Монтаж и настройка</dt>
    <dd>Собрав всю необходимую информацию о подключении, наш мастер, со всем необходимым оборудованием для подключения спутникового телевидения, приедет к вам на объект, осуществит монтаж спутниковой антены и отведёт
      нужное количество кабеля до
      каждого телевизора, после чего будет произведена настройка ресиверов.
    </dd>
  </dl>
  <h2>Дополнительная информация</h2>
  <h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения всех каналов без абонентской платы</h3>
  <ul class="uk-list"><a href="/ru/подключение-и-настройка-спутникового-телевидения">
    <li><i class="fas fa-external-link-alt"></i> Подключение и настройка спутникового телевидения</li>
  </a>
    <p class="uk-text-meta uk-margin-remove">* В данном подключении с 20.01.2020 г. не будет основных украинских каналов</p>  <a href="/ru/подключение-и-настройка-цифрового-эфирного-телевидения-т2">
      <li class="uk-padding-small uk-padding-remove-left"><i class="fas fa-external-link-alt"></i> Подключение и настройка цифрового эфирного телевидения (DVB-T2)</li>
    </a> <a href="/ru/подключение-и-настройка-комбинированного-спутникового-и-эфирного-т2-телевидения">
      <li><i class="fas fa-external-link-alt"></i> Подключение и настройка комбинированного (спутникового и эфирного DVB-T2) телевидения</li>
    </a></ul>
  <h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения всех каналов c абонентской платой</h3>
  <ul class="uk-list"><a href="/ru/лючение-и-настройка-extra-tv">
    <li><i class="fas fa-external-link-alt"></i> Подключение и настройка Extra TV</li>
  </a> <a href="/ru/подключение-и-настройка-интернет-телевидения-iptv-ott">
    <li class="uk-padding-small uk-padding-remove-left uk-padding-remove-bottom"><i class="fas fa-external-link-alt"></i>Подключение и настройка интернет телевидения (IPTV, OTT)</li>
  </a></ul>
</div>
', 20);
INSERT INTO "public"."customhtml" VALUES (1571154569061, 1571154569061, 18, '<h2>Цены</h2>
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
<div class="aditional-info">
  <h2>Что входит в указанную стоимость</h2>
  <dl class="uk-description-list uk-description-list-divider">
    <dt>Выезд мастера</dt>
    <dd>После того как вы согласуете все детали вашего подключения по телефону, наш мастер выедет к вам на объект.</dd>
    <dt>Оборудование</dt>
    <dd>К примеру вы выбрали комплект №4 на четыре телевизора за 5300 грн. В эту сумму будут включены четыре тюнера, параболическая антена, три антенных передатчика и сплиттер на четыре телевизора.</dd>
    <dt>Монтаж и настройка</dt>
    <dd>Собрав всю необходимую информацию о подключении, наш мастер, со всем необходимым оборудованием для подключения спутникового телевидения, приедет к вам на объект, осуществит монтаж спутниковой антены и отведёт
      нужное количество кабеля до
      каждого телевизора, после чего будет произведена настройка ресиверов.
    </dd>
  </dl>
  <h2>Дополнительная информация</h2>
  <h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения всех каналов без абонентской платы</h3>
  <ul class="uk-list"><a href="/ru/подключение-и-настройка-спутникового-телевидения">
    <li><i class="fas fa-external-link-alt"></i> Подключение и настройка спутникового телевидения</li>
  </a>
    <p class="uk-text-meta uk-margin-remove">* В данном подключении с 20.01.2020 г. не будет основных украинских каналов</p>  <a href="/ru/подключение-и-настройка-цифрового-эфирного-телевидения-т2">
      <li class="uk-padding-small uk-padding-remove-left"><i class="fas fa-external-link-alt"></i> Подключение и настройка цифрового эфирного телевидения (DVB-T2)</li>
    </a> <a href="/ru/подключение-и-настройка-комбинированного-спутникового-и-эфирного-т2-телевидения">
      <li><i class="fas fa-external-link-alt"></i> Подключение и настройка комбинированного (спутникового и эфирного DVB-T2) телевидения</li>
    </a></ul>
  <h3 class="red-color uk-text-bold uk-text-uppercase">Варианты подключения всех каналов c абонентской платой</h3>
  <ul class="uk-list"><a href="/ru/лючение-и-настройка-extra-tv">
    <li><i class="fas fa-external-link-alt"></i> Подключение и настройка Extra TV</li>
  </a> <a href="/ru/подключение-и-настройка-интернет-телевидения-iptv-ott">
    <li class="uk-padding-small uk-padding-remove-left uk-padding-remove-bottom"><i class="fas fa-external-link-alt"></i>Подключение и настройка интернет телевидения (IPTV, OTT)</li>
  </a></ul>
</div>
', 22);

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
INSERT INTO "public"."menuitems" VALUES (1571251343191, 1571251343191, 10, 'Дополнительные услуги', 'separator', 1, 3, 11, ' ', 1);
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
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 2, 'mod_menu', 'sidebarright', '{"menuSystemName":"mainmenu","ItemsLevel":"all","id":"sidebarmenu","style":""}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 3, 'mod_menu', 'mainmenu', '{"menuSystemName":"mainmenu","ItemsLevel":"1","style":"uk-list uk-text-center","id":"mainmenu"}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571154569061, 1571154569061, 4, 'mod_custom_js', 'javascript', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571154569061, 1571154569061, 5, 'mod_custom_html', 'section1', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571154569061, 1571154569061, 6, 'mod_custom_html', 'section1', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571154569061, 1571154569061, 7, 'mod_custom_html', 'section1', '{}', 1, 'f');
INSERT INTO "public"."modules" VALUES (1571154569061, 1571154569061, 8, 'mod_custom_html', 'section1', '{}', 1, 'f');
INSERT INTO "public"."modules" VALUES (1571154569061, 1571154569061, 9, 'mod_custom_html', 'section1', '{}', 1, 'f');
INSERT INTO "public"."modules" VALUES (1571154569061, 1571154569061, 10, 'mod_custom_html', 'section1', '{}', 1, 'f');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 11, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 12, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 13, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 14, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 15, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 16, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 17, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 18, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 19, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 20, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 21, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 22, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 23, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 24, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 35, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 37, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 38, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 39, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 40, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 41, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 42, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 43, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 44, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 45, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 46, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 47, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 48, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 49, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 50, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 51, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 52, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 53, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 54, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 55, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 56, 'mod_custom_html', 'article', '{}', 3, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 57, 'mod_custom_html', 'header', '{}', 1, 't');
INSERT INTO "public"."modules" VALUES (1571251343191, 1571251343191, 58, 'mod_custom_html', 'article', '{}', 3, 't');

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
INSERT INTO "public"."modulestable" VALUES (1571154569061, 1571154569061, 106, 1, 2);

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
SELECT setval('"public"."modulestable_id_seq"', 107, true);

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
