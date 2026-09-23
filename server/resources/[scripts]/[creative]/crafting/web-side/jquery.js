var selectCraft = "selectCraft";

window.addEventListener("message", (event) => {
	switch (event.data.action) {
		case "showNUI":
			selectCraft = event.data.name;
			$(".inventory").css("display", "flex");
			requestCrafting();
			break;

		case "hideNUI":
			$(".inventory").css("display", "none");
			$(".ui-tooltip").hide();
			break;

		case "requestCrafting":
			requestCrafting();
			break;
	}
});

$(document).ready(() => {
	document.onkeyup = (data) => {
		if (data["key"] === "Escape") {
			$.post("http://crafting/invClose");
		}
	};
});

const doubleClick = (event) => {
	const shiftPressed = event.shiftKey;
	const item = $(event.target).parent();
	const origin = item.parent()[0].className;
	if (origin === undefined || origin === "invRight") return;
	itemData = { key: item.data("item-key"), slot: item.data("slot") };

	if (itemData.key === undefined) return;

	let amount = $(".amount").val();
	if (shiftPressed) amount = item.data("amount");

	$.post(
		"http://inventory/useItem",
		JSON.stringify({
			slot: itemData.slot,
			amount: Number.parseInt(amount),
		}),
	);
};

const updateDrag = () => {
	$(".populated").draggable({
		helper: "clone",
	});

	$(".bar").draggable({
		helper: "clone",
	});

	$(".empty").droppable({
		hoverClass: "hoverControl",
		drop: function (event, ui) {
			if (ui.draggable.parent()[0] == undefined) return;

			const shiftPressed = event.shiftKey;
			const origin = ui.draggable.parent()[0].className;
			if (origin === undefined) return;
			const tInv = $(this).parent()[0].className;

			itemData = {
				key: ui.draggable.data("item-key"),
				slot: ui.draggable.data("slot"),
			};
			const target = $(this).data("slot");

			if (itemData.key === undefined || target === undefined) return;

			if (tInv === "invLeft") {
				if (origin === "invLeft") {
					itemData = {
						key: ui.draggable.data("item-key"),
						slot: ui.draggable.data("slot"),
					};
					const target = $(this).data("slot");

					if (itemData.key === undefined || target === undefined) return;
					let amount = $(".amount").val();
					if (shiftPressed) amount = ui.draggable.data("amount");

					$.post(
						"http://crafting/populateSlot",
						JSON.stringify({
							item: itemData.key,
							slot: itemData.slot,
							target: target,
							amount: Number.parseInt(amount),
						}),
					);

					$(".amount").val("");
				} else if (origin === "invRight") {
					itemData = { key: ui.draggable.data("item-key") };
					const target = $(this).data("slot");

					if (itemData.key === undefined || target === undefined) return;

					$.post(
						"http://crafting/functionCraft",
						JSON.stringify({
							craft: selectCraft,
							index: itemData.key,
							slot: target,
							amount: Number.parseInt($(".amount").val()),
						}),
					);

					$(".amount").val("");
				}
			} else if (tInv === "invRight") {
				if (origin === "invLeft") {
					itemData = {
						key: ui.draggable.data("item-key"),
						slot: ui.draggable.data("slot"),
					};

					if (itemData.key === undefined) return;
					let amount = $(".amount").val();
					if (shiftPressed) amount = ui.draggable.data("amount");

					$.post(
						"http://crafting/functionDestroy",
						JSON.stringify({
							craft: selectCraft,
							index: itemData.key,
							slot: itemData.slot,
							amount: Number.parseInt(amount),
						}),
					);

					$(".amount").val("");
				}
			}
		},
	});

	$(".items-slots li").droppable({
		hoverClass: "hoverControl",
		drop: function (event, ui) {
			if (ui.draggable.parent()[0] == undefined) return;

			const shiftPressed = event.shiftKey;
			const origin = ui.draggable.parent()[0].className;
			if (origin === undefined) return;
			const tInv = $(this).parent()[0].className;

			itemData = {
				key: ui.draggable.data("item-key"),
				slot: ui.draggable.data("slot"),
			};
			const target = $(this).data("slot");

			if (itemData.key === undefined || target === undefined) return;

			if (tInv === "invLeft") {
				if (origin === "invLeft") {
					itemData = {
						key: ui.draggable.data("item-key"),
						slot: ui.draggable.data("slot"),
					};
					const target = $(this).data("slot");

					if (itemData.key === undefined || target === undefined) return;
					let amount = $(".amount").val();
					if (shiftPressed) amount = ui.draggable.data("amount");

					$.post(
						"http://crafting/updateSlot",
						JSON.stringify({
							item: itemData.key,
							slot: itemData.slot,
							target: target,
							amount: Number.parseInt(amount),
						}),
					);

					$(".amount").val("");
				} else if (origin === "invRight") {
					itemData = { key: ui.draggable.data("item-key") };
					const target = $(this).data("slot");

					if (
						itemData.key === undefined ||
						target === undefined ||
						itemData.key !== $(this).data("item-key")
					)
						return;

					$.post(
						"http://crafting/functionCraft",
						JSON.stringify({
							craft: selectCraft,
							index: itemData.key,
							slot: target,
							amount: Number.parseInt($(".amount").val()),
						}),
					);

					$(".amount").val("");
				}
			} else if (tInv === "invRight") {
				if (origin === "invLeft") {
					itemData = {
						key: ui.draggable.data("item-key"),
						slot: ui.draggable.data("slot"),
					};

					if (itemData.key === undefined) return;
					let amount = $(".amount").val();
					if (shiftPressed) amount = ui.draggable.data("amount");

					$.post(
						"http://crafting/functionDestroy",
						JSON.stringify({
							craft: selectCraft,
							index: itemData.key,
							slot: itemData.slot,
							amount: Number.parseInt(amount),
						}),
					);

					$(".amount").val("");
				}
			}
		},
	});

	$(".populated").droppable({
		hoverClass: "hoverControl",
		drop: function (event, ui) {
			if (ui.draggable.parent()[0] == undefined) return;

			const shiftPressed = event.shiftKey;
			const origin = ui.draggable.parent()[0].className;
			if (origin === undefined) return;
			const tInv = $(this).parent()[0].className;

			itemData = {
				key: ui.draggable.data("item-key"),
				slot: ui.draggable.data("slot"),
			};
			const target = $(this).data("slot");

			if (itemData.key === undefined || target === undefined) return;

			if (tInv === "invLeft") {
				if (origin === "invLeft") {
					itemData = {
						key: ui.draggable.data("item-key"),
						slot: ui.draggable.data("slot"),
					};
					const target = $(this).data("slot");

					if (itemData.key === undefined || target === undefined) return;
					let amount = $(".amount").val();
					if (shiftPressed) amount = ui.draggable.data("amount");

					$.post(
						"http://crafting/updateSlot",
						JSON.stringify({
							item: itemData.key,
							slot: itemData.slot,
							target: target,
							amount: Number.parseInt(amount),
						}),
					);

					$(".amount").val("");
				} else if (origin === "invRight") {
					itemData = { key: ui.draggable.data("item-key") };
					const target = $(this).data("slot");

					if (
						itemData.key === undefined ||
						target === undefined ||
						itemData.key !== $(this).data("item-key")
					)
						return;

					$.post(
						"http://crafting/functionCraft",
						JSON.stringify({
							craft: selectCraft,
							index: itemData.key,
							slot: target,
							amount: Number.parseInt($(".amount").val()),
						}),
					);

					$(".amount").val("");
				}
			} else if (tInv === "invRight") {
				if (origin === "invLeft") {
					itemData = {
						key: ui.draggable.data("item-key"),
						slot: ui.draggable.data("slot"),
					};

					if (itemData.key === undefined) return;
					let amount = $(".amount").val();
					if (shiftPressed) amount = ui.draggable.data("amount");

					$.post(
						"http://crafting/functionDestroy",
						JSON.stringify({
							craft: selectCraft,
							index: itemData.key,
							slot: itemData.slot,
							amount: Number.parseInt(amount),
						}),
					);

					$(".amount").val("");
				}
			}
		},
	});

	$(".bar").tooltip({
		create: function(event,ui){
			var max = $(this).attr("data-max");
			var economy = $(this).attr("data-economy");
			var description = $(this).attr("data-description");
			var name = $(this).attr("data-name-key");
			var recipe = $(this).attr("data-list");

			$(this).tooltip({
				content: `<item>${name}</item>${description !== "false" ? "<br><description>"+description+"</description>":""}<br><legenda>${recipe}</legenda>`,
				position: { my: "center top+10", at: "center bottom", collision: "flipfit" },
				show: { duration: 10 },
				hide: { duration: 10 }
			})
		}
	});

	$(".populated").tooltip({
		create: function(event,ui){
			var max = $(this).attr("data-max");
			var peso = $(this).attr("data-peso");
			var economy = $(this).attr("data-economy");
			var description = $(this).attr("data-description");
			var name = $(this).attr("data-name-key");
			var recipe = $(this).attr("data-list");
			if (description === "undefined") {
				description = "false"
			}
			var recipes = ""
			if (recipe) {
				recipe.split("<br>").forEach((items) => {
					const item = items.split(" ")
					recipes += `
						<li>
							<div class="li-title">${item[1].replace("/<.*/", "")}</div>
							<div class="li-value">${item[0]}</div>
						</li>
					`
				})
			}
			var contents = `
				<div class="header">
					<div class="header-title">
						<div class="header-item">
							<h3>${name}</h3>
							<div class="item-weight">
								<svg xmlns="http://www.w3.org/2000/svg" style="width: 1.125rem; height: 1.125rem;" width="18" height="18" viewBox="0 0 18 18" fill="none">
									<path d="M9 5.25C9.2125 5.25 9.39075 5.178 9.53475 5.034C9.67875 4.89 9.7505 4.712 9.75 4.5C9.7495 4.288 9.6775 4.11 9.534 3.966C9.3905 3.822 9.2125 3.75 9 3.75C8.7875 3.75 8.6095 3.822 8.466 3.966C8.3225 4.11 8.2505 4.288 8.25 4.5C8.2495 4.712 8.3215 4.89025 8.466 5.03475C8.6105 5.17925 8.7885 5.251 9 5.25ZM11.1188 5.25H12.4313C12.8063 5.25 13.1313 5.375 13.4063 5.625C13.6813 5.875 13.85 6.18125 13.9125 6.54375L14.9813 14.0438C15.0438 14.4938 14.9283 14.8907 14.6348 15.2347C14.3413 15.5787 13.963 15.7505 13.5 15.75H4.5C4.0375 15.75 3.65925 15.5782 3.36525 15.2347C3.07125 14.8912 2.95575 14.4943 3.01875 14.0438L4.0875 6.54375C4.15 6.18125 4.31875 5.875 4.59375 5.625C4.86875 5.375 5.19375 5.25 5.56875 5.25H6.88125C6.84375 5.125 6.8125 5.00325 6.7875 4.88475C6.7625 4.76625 6.75 4.638 6.75 4.5C6.75 3.875 6.96875 3.34375 7.40625 2.90625C7.84375 2.46875 8.375 2.25 9 2.25C9.625 2.25 10.1563 2.46875 10.5938 2.90625C11.0313 3.34375 11.25 3.875 11.25 4.5C11.25 4.6375 11.2375 4.76575 11.2125 4.88475C11.1875 5.00375 11.1563 5.1255 11.1188 5.25Z" fill="#EFBE28"/>
								</svg>
								<p>${peso || 0}kg</p>
							</div>
						</div> 
						<p>Utilizavel</p>
					</div>
					${(description !== "false") ? `<div class="header-description">${description}</div>` : ""}
				</div>
				<ul class="main">
					${!recipe ? `
							<li>
								<div class="li-title">Economia</div>
								<div class="li-value">$${economy}</div>
							</li>
							<li>
								<div class="li-title">Máximo</div>
								<div class="li-value">${max !== "false" ? max : "S/L"}</div>
							</li>
						` : 
						recipes
					}
				</ul>
			`

			$(this).tooltip({
				content: contents,
				position: { my: "center top+10", at: "center bottom", collision: "flipfit" },
				show: { duration: 10 },
				hide: { duration: 10 }
			})
		}
	});
};

const colorPicker = (percent) => {
	var colorPercent = "#2e6e4c";

	if (percent >= 100) colorPercent = "rgba(255,255,255,0)";

	if (percent >= 51 && percent <= 75) colorPercent = "#fcc458";

	if (percent >= 26 && percent <= 50) colorPercent = "#fc8a58";

	if (percent <= 25) colorPercent = "#fc5858";

	return colorPercent;
};

const requestCrafting = () => {
	$.post(
		"http://crafting/requestCrafting",
		JSON.stringify({ craft: selectCraft }),
		(data) => {
			$("#weightTextLeft").html(
				`${(data["invPeso"]).toFixed(2)}   /   ${(data["invMaxpeso"]).toFixed(2)}`,
			);

			$("#weightBarLeft").html(
				`<div id="weightContent" style="width: ${(data["invPeso"] / data["invMaxpeso"]) * 100}%"></div>`,
			);

			$(".invLeft").html("");
			$(".invRight").html("");

			updateDrag();

			if (data["invMaxpeso"] > 100) data["invMaxpeso"] = 100;

			const nameList2 = data.inventoryCraft.sort((a, b) =>
				a.name > b.name ? 1 : -1,
			);

			for (let x = 1; x <= 5; x++) {
				const slot = x.toString();

				if (data["inventario"][slot] !== undefined) {
					var v = data["inventario"][slot];
					var maxDurability = 86400 * v["days"];
					var newDurability = (maxDurability - v["durability"]) / maxDurability;
					var actualPercent = newDurability * 100;

					if (v["charges"] !== undefined) actualPercent = v["charges"];

					if (actualPercent <= 1) actualPercent = 1;

					const item = `<div class="item bar" title="" data-max="${v["max"]}" data-economy="${v["economy"]}" data-description="${v["desc"]}" data-amount="${v["amount"]}" data-peso="${v["peso"]}" data-item-key="${v["key"]}" data-name-key="${v["name"]}" data-slot="${slot}" data-idName="${v["idName"]}" data-idBlood="${v["idBlood"]}" data-idPremium="${v["idPremium"]}" data-garage="${v["Garage"]}" data-idVality="${v["idVality"]}" data-locate="${v["Locate"]}" data-visa="${v["Visa"]}" data-gems="${v["Gems"]}" data-idRolepass="${v["idRolepass"]}" data-Suitcase="${v["Suitcase"]}" data-Vehkey="${v["Vehkey"]}" data-Passport="${v["Passport"]}">
					<div class="top">
						<div class="itemWeight">${(v["peso"] * v["amount"]).toFixed(2)}</div>
						<div class="itemAmount">${formatarNumero(v["amount"])}x</div>
					</div>

					<img src="http://181.215.236.140/inventory/${v["index"]}.png"></img>
					<div class="durability" style="--percent: ${actualPercent == 1 ? "100" : actualPercent}%; --color: ${colorPicker(actualPercent)}; opacity: ${data["inventario"][slot]["durability"] > 0 ? 1 : 0} "></div>
					<div class="itemName">${v["name"]}</div>
				</div>`;

					$(`.items-slots li[data-slot="${slot}"]`).html(item);
				}
			}

			for (let x = 6; x <= data["invMaxpeso"]; x++) {
				const slot = x.toString();

				if (data["inventario"][slot] !== undefined) {
					var v = data["inventario"][slot];
					var maxDurability = 86400 * v["days"];
					var newDurability = (maxDurability - v["durability"]) / maxDurability;
					var actualPercent = newDurability * 100;

					if (v["charges"] !== undefined) actualPercent = v["charges"];

					if (actualPercent <= 1) actualPercent = 1;

					const item = `<div class="item populated" title="" data-max="${v["max"]}" data-economy="${v["economy"]}" data-description="${v["desc"]}" data-amount="${v["amount"]}" data-peso="${v["peso"]}" data-item-key="${v["key"]}" data-name-key="${v["name"]}" data-slot="${slot}" data-idName="${v["idName"]}" data-idBlood="${v["idBlood"]}" data-idPremium="${v["idPremium"]}" data-garage="${v["Garage"]}" data-idVality="${v["idVality"]}" data-locate="${v["Locate"]}" data-visa="${v["Visa"]}" data-gems="${v["Gems"]}" data-idRolepass="${v["idRolepass"]}" data-Suitcase="${v["Suitcase"]}" data-Vehkey="${v["Vehkey"]}" data-Passport="${v["Passport"]}">
					<div class="top">
						<div class="itemWeight">${(v["peso"] * v["amount"]).toFixed(2)}</div>
						<div class="itemAmount">${formatarNumero(v["amount"])}x</div>
					</div>

					<img src="http://181.215.236.140/inventory/${v["index"]}.png"></img>
					<div class="durability" style="--percent: ${actualPercent == 1 ? "100" : actualPercent}%; --color: ${colorPicker(actualPercent)}; opacity: ${data["inventario"][slot]["durability"] > 0 ? 1 : 0} "></div>
					<div class="itemName">${v["name"]}</div>
				</div>`;

					$(".invLeft").append(item);
				} else {
					const item = `<div class="item empty" data-slot="${slot}"></div>`;

					$(".invLeft").append(item);
				}
			}

			for (let x = 1; x <= 50; x++){
				const slot = x.toString();
	
				if (nameList2[x - 1] !== undefined){
					const v = nameList2[x - 1];
					let list = "";
	
					for (let i in v.list){
						list = `${list}${v.list[i].amount}x ${v.list[i].name}<br>`;
					}
	
					list = list.substring(0,list.length - 2);
					const item = `<div class="item populated" title="" style="background-image: url('http://jaguareroleplay.com/inventory/${v.index}.png'); background-position: center; background-repeat: no-repeat;" data-item-key="${v.key}" data-name-key="${v.name}" data-list="${list}" data-slot="${slot}" data-description="${v["desc"]}" data-max="${v["max"]}" data-economy="${v["economy"]}">
						<div class="top">
							<div class="itemWeight">${v.peso.toFixed(2)}</div>
							<div class="itemAmount">${formatarNumero(v.amount)}x</div>
						</div>
		
						<img src="http://181.215.236.140/inventory/${v["index"]}.png"></img>
						<div class="itemName">${v["name"]}</div>
					</div>`;
	
					$(".invRight").append(item);
				} else {
					const item = `<div class="item empty" data-slot="${slot}"></div>`;
	
					$(".invRight").append(item);
				}
			}
			
			updateDrag();
		},
	);
};

const formatarNumero = (n) => {
	var n = n.toString();
	var r = "";
	var x = 0;

	for (var i = n.length; i > 0; i--) {
		r += n.substr(i - 1, 1) + (x == 2 && i != 1 ? "." : "");
		x = x == 2 ? 0 : x + 1;
	}

	return r.split("").reverse().join("");
};
