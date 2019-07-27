# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

- theater/new
- theater/show
- theater/edit

- user/review
create
@review.user_id = current_user.idでcreateされたデータにユーザーのidを与えている。
@review.theater_id = params[:review][:theater_id]でhidden_fieldの値を与えている。

- theaterlike/reviewlike/spendlike
theater = Theater.find(params[:theater_id])でいいねする対象の劇場を選んでいる。
theaterlikes = current_user.theaterlikes.new(theater_id: theater.id)でログイン中のユーザーが劇場に対するいいねを新しく作成する。
theaterlikes.saveでいいねを保存。

theaterlike = current_user.theaterlikes.find_by(theater_id: theater.id)でユーザーが持っているいいねの中から劇場のidが一致しているいいねを選んで消す。

- sideber(hamburger menu)、tab review/お問い合わせ
jQueryはクラスの付け替えをさせて、cssアニメーション（transition等）で動きをつけている。

- clip(likes)

- my page

- ransack
ransackのヘルパーであるsearch_form_forで検索枠を作る。
検索ワードのパラメーターを送るurlを指定する。
f.labelで検索させたいカラムをor検索で指定する。後ろに_contをつける。
ransackメソッドでインスタンスを生成して、そのインスタンスに対してresultメソッドを呼び出して検索結果を変数に格納する。

- user/contact/new
問い合せの入力フォームのこと。
<%= form_for @contact, url: users_contacts_path do |f| %>で一時保存される問い合わせデータの作成。


- user/contact/confirm
問い合せの確認画面。
createされて確認画面に入った時、is_confirmedカラムがfolseになり一時保存され表示されている。


- uesr/contact/mailer
doneのeleseに入った時に適応される。
「$ rails g mailer ContactMailer」する。
is_confirmed
「ContactMailer」に「default to: ENV['UNFORGETTABLE']」で送り先を指定。
「send_contact(contact)」@contact = contactで引数の(contact)を@contactという変数に置き換えている。
「send_request(request)」の@request = requestも同様。
「mail(to: ENV['UNFORGETTABLE'],  subject: "#{@contact.name}様よりメッセージが届きました")」to:で送り先をを指定、subject:の「#{@contact.name}」でcontactテーブルのnameカラム(氏名)をメールのフォーマットに表示。
viewの「contact_mailer」でメールのフォーマットを指定。@contactを使い、createで一時保存されたデータを使用し本文を作成。
送信ボタンを押し、メールが送られた後、is_confirmedカラムがtrueになり確定保存となる。
@contactを使い、createで一時保存されたデータを表示させている。

- user/contact/back
doneアクションで行われている。
「@contact = Contact.find(params[:id])」newで入力されたデータをこの変数に入れている。
「if params[:back]」戻るを押した時にはパラメーターにbackを含んでいる。送信には含まれない。
「@contact = Contact.new(contact_params)」一行追加し、confirmに入力されたデータを入れている。
「@request = ContactRequest.new」newの画面を表示させるため。
「render :action => 'new'」このコントローラーのnewアクションに飛ばしてnewの画面を表示させるがrenderなのでアクションは起きない。
contact_requestの場合、別のコントローラーにnewがあるため「render template: 'users/contacts/new'」で指定。