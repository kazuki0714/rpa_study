$(".tab_nav a").click( tabClicked );

function tabClicked (e) {
	e.preventDefault();
	var id_name = $(e.target).attr("href"); // タブの対象となるid名を抜き取る（例）tab_1
	$(".archives").removeClass("show"); // .archives全てのクラスからshowクラスを削除する
	$(id_name).addClass("show"); // クリックされたタブ対象のid名を持ったdiv要素にshowクラスを追加する
	//div.show状態になった要素はCSSに記載されたdisplay: blockとなり、表示される
}
