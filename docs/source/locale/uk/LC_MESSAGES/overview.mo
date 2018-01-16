��    )      d      �      �     �  �   �    �     �  K  �  g        o  
   ~     �  !   �  h   �        O   )  �   y  �   ^     K	  
   a	  ~   l	  5   �	  b   !
  :   �
  P   �
       D        ^     m  H   �  I   �  v     !   �  t   �     %  Z   ?  �   �  9   J  G   �  0   �  6   �  5   4  W   j    �     �  O  �  t       �  @  �  �   �     �     �     �  =   �  �        �  z   �  �  l  |  �     j     �  #  �  ~   �  �   E  s   �  �   O  
   �  \   �     T   '   l   U   �   Z   �   �   E!  >   #"  �   b"     #  �   *#  �   �#  O   �$  G   �$  ^   5%  i   �%  U   �%  �   T&   0.1 API accepts `JSON <http://json.org/>`_ or form-encoded content in requests.  It returns JSON content in all of its responses, including errors.  Only the UTF-8 character encoding is supported for both requests and responses. API is highly unstable, and while API endpoints are expected to remain relatively stable the data exchange formats are expected to be changed a lot.  The changes in the API are communicated via `Open Procurement API <https://groups.google.com/group/open-procurement-api>`_ maillist. API stability All API POST and PUT requests expect a top-level object with a single element in it named `data`.  Successful responses will mirror this format. The data element should itself be an object, containing the parameters for the request.  In the case of creating a new auction, these are the fields we want to set on the auction itself. As soon as the action is edited, the status of all of the submitted bids will be switched to `invalid`. Business logic Change log Conventions Documentation of related packages During *active.tendering* period participants can ask questions, submit proposals, and upload documents. Features If *enquiryPeriod.endDate* is not provided it will be calculated automatically. If something went wrong during the request, we'll get a different status code and the JSON returned will have an `errors` field at the top level containing a list of problems.  We look at the first one and print out its message. If the request was successful, we will get a response code of `201` indicating the object was created.  That response will have a data field at its top level, which will contain complete information on the new auction, including its ID. Main responsibilities Next steps No need to specify enquiries period (there is no *active.enquiries* status), since it overlaps with *active.tendering* period. Optionally Organizer can set *enquiryPeriod.endDate*. Organizer can both increase and decrease `value.amount`, `guarantee.amount`, `minimalStep.amount`. Organizer can edit procedure only during *enquiryPeriod*.  Organizer can't edit procedure's significant properties (*Auction.value*, etc.). Overview Procedure can be switched from *draft* status to *active.tendering*. Project status Released: not released The items within an auction are allowed to be from different CAV groups. The only currency (*Value.currency*) for this procedure is hryvnia (UAH). The only date Organizer has to provide is *Tender.auctionPeriod.startDate*, the rest will be calculated automatically. The project has pre alpha status. The source repository for this project is on GitHub: https://github.com/openprocurement/openprocurement.auctions.dgf There are two procedures: There is obligatory participant qualification (*Bid.selfQualified*) via guarantee payment. You can leave feedback by raising a new issue on the `issue tracker <https://github.com/openprocurement/openprocurement.auctions.dgf/issues>`_ (GitHub registration necessary). You might find it helpful to look at the :ref:`tutorial`. `OpenProcurement API <http://api-docs.openprocurement.org/en/latest/>`_ `tenderPeriod` must be at least 7 calendar days. dgfFinancialAssets - sale of the creditor claim right. dgfOtherAssets - sale of the insolvent bank property. openprocurement.auctions.dgf contains documentaion for Deposit Guarantee Fund auctions. Project-Id-Version: openprocurement.auctions.dgf 0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-09-12 15:36+0300
PO-Revision-Date: 2016-11-18 13:51+0200
Last-Translator: Zoriana Zaiats <sorenabell@quintagroup.com>
Language-Team: Ukrainian <support@quintagroup.com>
Language: uk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Generator: Lokalize 2.0
 0.1 API приймає `JSON <http://json.org/>`_ або form-encoded вміст у запитах. Він повертає JSON вміст у всіх свої відповідях, включно з помилками. Підтримується лише UTF-8 кодування і для запитів, і для відповідей. API є дуже нестабільним. Хоча точки входу API будуть відносно стабільними, формати обміну даними будуть часно змінюватись. Зміни в API обговорюються через `Open Procurement API <https://groups.google.com/group/open-procurement-api>`_ розсилку. Стабільність API Всі API POST та PUT запити очікують об'єкт верхнього рівня з єдиним елементом з назвою `data`. Відповіді з повідомленням про успіх будуть віддзеркалювати цей формат. Елемент data повинен сам бути об’єктом, що містить параметри запиту. Якщо створюється новий аукціон, то це ті поля, які ми хочемо встановити на самому аукціоні. Кожного разу після редагування аукціону статус всіх ставок перемикається на `invalid`. Бізнес логіка Звіт про зміни Домовленості Документація пов’язаних пакетів Протягом періоду *active.tendering* учасники можуть задавати питання, подавати пропозиції, завантажувати документи. Особливості Якщо *enquiryPeriod.endDate* не передано, ця дата встановлюється автоматично. Якщо під час запиту виникли труднощі, ми отримаємо інший код стану та JSON, який при поверненні міститиме `errors` поле на верхньому рівні зі списком проблем. Ми дивимось на першу з них і видруковуємо її повідомлення. Якщо запит був успішним, ми отримаємо код відповіді `201`, який вказує, що об’єкт був створений. Ця відповідь буде мати data поле на верхньому рівні, яке вміщуватиме повну інформацію про новий аукціон, включно з ID. Основні задачі Наступні кроки Відсутність необхідності вказання періоду уточнень (тут немає окремого статусу *active.enquiries*), оскільки він накладається на період прийому пропозицій *active.tendering*. Також додатково Організатор має можливість встановити *enquiryPeriod.endDate*. Організатор може як зменшувати, так і збільшувати `value.amount`, `guarantee.amount`, `minimalStep.amount`. Організатор може редагувати аукціон тільки впродовж *enquiryPeriod*.  Організатор не може редагувати суттєвих властивостей процедури, наприклад, *Auction.value*. Огляд Процедура переходить зі статусу *draft* до *active.tendering*. Стан проекту Випущено: не випущено Аукціон може містити елементи з різних CAV груп. Єдина валюта (*Value.currency*) цієї процедури - гривня UAH. Організатор може передати тільки дату початку аукціону *Tender.auctionPeriod.startDate*. Всі решта дати будуть обраховані на її основі. Статус цього проекту - перед-альфа Репозиторій джерельних текстів цього проекту є на `GitHub <https://github.com/openprocurement/openprocurement.auctions.dgf>`_. Є дві процедури: Обов’язкова кваліфікація учасника (*Bid.selfQualified*) через гарантійний платіж. Повідомляйте про всі проблеми та поради через `issue tracker <https://github.com/openprocurement/openprocurement.auctions.dgf/issues>`_ (реєстрація на GitHub обов’язкова). Можливо вам буде цікаво прочитати :ref:`tutorial`. `OpenProcurement API <http://api-docs.openprocurement.org/en/latest/>`_ `tenderPeriod` має складати щонайменше 7 календарних днів. dgfFinancialAssets - продаж права вимоги за кредитними договорами. dgfOtherAssets - продаж майна банків, що ліквідуються. openprocurement.auctions.dgf містить документацію по аукціонах Фонду гарантування вкладів. 