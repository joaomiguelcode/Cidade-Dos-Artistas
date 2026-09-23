$(document).ready(function () {
	const buttons = [];
	const submenus = [];
	var normalButtons = 0;

	document.onkeyup = function (data) {
		if (data["which"] == 27) {
			for (i = 1; i <= normalButtons; ++i) {
				$("#normalbutton-" + i).remove();
			}

			normalButtons = 0;
			$("button").remove();
			$("#goback").remove();
			buttons["length"] = 0;
			submenus["length"] = 0;
			$(".Container").html("");

			$.post("http://dynamic/close");
		}
	}

	window.addEventListener("message", function (event) {
		var item = event["data"];

		var icons = {
			"Jogador": '<img src="./public/images/avatar.svg"></img>',
			"Roupas": '<img src="./public/images/clothes.svg"></img>',
			"Gerenciar Outfits": '<img src="./public/images/clothes.svg"></img>',
			"Outfits Salvos": '<img src="./public/images/clothes.svg"></img>',
			"Experiência": '<img src="./public/images/star.svg"></img>',
			"hypex_misc_cloackroom": '<img src="./public/images/star.svg"></img>',
			"Serviços": '<img src="./public/images/info.svg"></img>',
			"Outros": '<img src="./public/images/info.svg"></img>',
			"Portas": '<img style="max-width: 8%;" src="./public/images/doors.svg"></img>',
			"Veículo": '<img style="max-width: 8%;" src="./public/images/car.svg"></img>'
		}

		if (item["addbutton"] == true) {
			if (item.id == false || null) {
				normalButtons = normalButtons + 1;
				var b = (`<div id="normalbutton-${normalButtons}" data-trigger="` + item["trigger"] + `" data-parm="` + item["par"] + `" data-server="` + item["server"] + `" class="normalbutton ${item["title"] == "Guardar" ? "amarelo" : ""}"><div id="normalbutton-${normalButtons}" class="normalbutton"><div class="flex-1">
				${icons[item["title"]] ? icons[item["title"]] : ""}
				<div class="flex"><div class="title">` + item["title"] + `</div><div class="description" >` + item["description"] + `</div></div><div class="button"><img src="./public/images/icon.svg"></div></div></div>`);
				$(".Container").append(b);
				buttons.push(b);
			} else {
				var b = (`<button id="` + item["id"] + `" data-trigger="` + item["trigger"] + `" data-parm="` + item["par"] + `" data-server="` + item["server"] + `" class="a btn"><div class="flex-1">
				${icons[item["title"]] ? icons[item["title"]] : ""}
				<div class="flex"><div class="title">` + item["title"] + `</div><div class="description" >` + item["description"] + `</div></div></div><div class="button" style="margin-right: 10%;width: 2.7rem;height: 1.9rem;"><img src="./public/images/icon.svg"></div></button>`);
				buttons.push(b);
			}
		} else if (item["addmenu"] == true) {
			var aa = (`<button data-menu="` + item["menuid"] + `" class="b btn"><div class="flex-1">
				${icons[item["title"]] ? icons[item["title"]] : ""}
				<div class="flex"><div class="title">` + item["title"] + `</div><div class="description" >` + item["description"] + `</div></div><div class="button"><img src="./public/images/icon.svg"></div></button>`)
			$(".Container").append(aa);
			submenus.push(aa);
		}

		if (item["close"] == true) {
			for (i = 1; i <= normalButtons; ++i) {
				$("#normalbutton-" + i).remove();
			}

			normalButtons = 0;
			$("button").remove();
			$("#goback").remove();
			buttons["length"] = 0;
			submenus["length"] = 0;
			$(".Container").html("");

			$.post("http://dynamic/close");
		}

		if (item["show"] == true) {
			$(".Container").show();
		}
	});

	$("body").on("click", ".normalbutton", function () {
		$.post("http://dynamic/clicked", JSON.stringify({ trigger: $(this).attr("data-trigger"), param: $(this).attr("data-parm"), server: $(this).attr("data-server") }));
	});

	$("body").on("click", ".a", function () {
		$.post("http://dynamic/clicked", JSON.stringify({ trigger: $(this).attr("data-trigger"), param: $(this).attr("data-parm"), server: $(this).attr("data-server") }));
	});

	$("body").on("click", ".b", function () {
		$(".b").remove();
		$(".a").remove();

		for (i = 1; i <= normalButtons; ++i) {
			$("#normalbutton-" + i).hide();
		}

		var goBack = (`<div id="goback" class="normalbutton amarelo"><div class="flex-1"><div class="flex"><div class="title">Voltar</div><div class="description" >Clique e volte nas opções anteriores</div></div></div><div class="button-goback" style="margin-left: 6%;width: 2.7rem;height: 1.9rem;"><img src="./public/images/icon.svg"></div></div>`);
		$(".Container").append(goBack).show();

		var menuid = $(this).attr("data-menu");
		for (i = 0; i < buttons["length"]; ++i) {
			var div = buttons[i];
			var match = div.match(`id="` + menuid + `"`);
			if (match) {
				$(".Container").append(div);
			}
		}
	});

	$("body").on("click", "[id=goback]", function () {
		$(".b").remove();
		$(".a").remove();
		$("button").remove();
		$("#goback").remove();
		$(".Container").append(submenus).show();

		for (i = 1; i <= normalButtons; ++i) {
			$("#normalbutton-" + i).show();
		}
	});
});
