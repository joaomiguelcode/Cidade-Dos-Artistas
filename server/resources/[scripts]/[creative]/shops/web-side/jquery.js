var selectShop = "selectShop";
var selectType = "Buy";
/* --------------------------------------------------- */
$(document).ready(function(){
	window.addEventListener("message",function(event){
		switch(event.data.action){
			case "showNUI":
				selectShop = event.data.name;
				selectType = event.data.type;
				$(".inventory").css("display","flex");
				requestShop();
			break;

			case "hideNUI":
				$(".inventory").css("display","none");
				$(".ui-tooltip").hide();
			break;

			case "requestShop":
				requestShop();
			break;
		}
	});

	document.onkeyup = data => {
		if (data["key"] === "Escape"){
			$.post("http://shops/close");
			$(".invRight").html("");
			$(".invLeft").html("");
		}
	}
});
function checkDamaged(item) {
	function splitString(full, symbol = "-") {
	  return typeof full === "string" ? full.split(symbol) : [];
	}
  
	if (!item || typeof item.durability !== "number" || !item.name || !item?.durability) {
	  return false;
	}
  
	const durability = item.durability > 0 ? item.durability : false;
  
	const split = splitString(item.name, "-");
	const timestamp = split[1] ? parseInt(split[1], 10) : null;
  
	if (durability && timestamp) {
	  const maxDurability = 86400 * durability;
	  const currentDurability = maxDurability - (Date.now() / 1000 - timestamp);
  
	  const remainingPercent = (currentDurability / maxDurability) * 100;
  
	  if (remainingPercent <= 1) {
		return true;
	  }
	}
  
	return false; 
}

const doubleClick = (event) => {
	const shiftPressed = event.shiftKey;
	const item = $(event.target).parent()
	const origin = item.parent()[0].className;
	if (origin === undefined || origin === "invRight") return;
	itemData = { key: item.data("item-key"), slot: item.data("slot") };

	if (itemData.key === undefined) return;

	let amount = $(".amount").val();
	if (shiftPressed) amount = item.data("amount");

	$.post("http://inventory/useItem",JSON.stringify({
		slot: itemData.slot,
		amount: parseInt(amount)
	}));
}

/* --------------------------------------------------- */
const updateDrag = () => {
	$(".populated").draggable({
		helper: "clone"
	});

	$(".bar").draggable({
		helper: "clone"
	});

	$('.empty').droppable({
		hoverClass: 'hoverControl',
		drop: function(event,ui){
			if(ui.draggable.parent()[0] == undefined) return;

			const shiftPressed = event.shiftKey;
			const origin = ui.draggable.parent()[0].className;
			if (origin === undefined) return;
			const tInv = $(this).parent()[0].className;

			itemData = { key: ui.draggable.data('item-key'), slot: ui.draggable.data('slot') };
			const target = $(this).data('slot');

			if (itemData.key === undefined || target === undefined) return;

			let amount = $(".amount").val();
			if (shiftPressed) amount = ui.draggable.data('amount');

			if (tInv === "invLeft"){
				if (origin === "invLeft"){
					$.post("http://shops/populateSlot",JSON.stringify({
						item: itemData.key,
						slot: itemData.slot,
						target: target,
						amount: parseInt(amount)
					}))

					$(".amount").val("");
				} else if (origin === "invRight"){
					$.post("http://shops/functionShops",JSON.stringify({
						shop: selectShop,
						item: itemData.key,
						slot: target,
						amount: parseInt(amount)
					}));

					$(".amount").val("");
				}
			} else if (tInv === "invRight"){
				if (origin === "invLeft" && selectType === "Sell"){
					$.post("http://shops/functionShops",JSON.stringify({
						shop: selectShop,
						item: itemData.key,
						slot: itemData.slot,
						amount: parseInt(amount)
					}));

					$(".amount").val("");
				}
			}
		}
	});

	$('.populated').droppable({
		hoverClass: 'hoverControl',
		drop: function(event,ui){
			if(ui.draggable.parent()[0] == undefined) return;

			const shiftPressed = event.shiftKey;
			const origin = ui.draggable.parent()[0].className;
			if (origin === undefined) return;
			const tInv = $(this).parent()[0].className;

			if(origin === "invRight" && tInv === "invRight") return;

			itemData = { key: ui.draggable.data('item-key'), slot: ui.draggable.data('slot') };
			const target = $(this).data('slot');

			if (itemData.key === undefined || target === undefined) return;

			let amount = 0;
			let itemAmount = parseInt(ui.draggable.data('amount'));

			if (shiftPressed)
				amount = itemAmount;
			else if($(".amount").val() == "" | parseInt($(".amount").val()) <= 0)
				amount = 1;
			else
				amount = parseInt($(".amount").val());

			if(amount > itemAmount)
				amount = itemAmount;

			$('.populated, .empty, .use').off("draggable droppable");

			if(ui.draggable.data('item-key') == $(this).data('item-key')){
				let newSlotAmount = amount + parseInt($(this).data('amount'));
				let newSlotWeight = ui.draggable.data("peso") * newSlotAmount;

				$(this).data('amount',newSlotAmount);
				$(this).children(".top").children(".itemAmount").html(formatarNumero(newSlotAmount) + "x");
				$(this).children(".top").children(".itemWeight").html(newSlotWeight.toFixed(2));

				if(amount == itemAmount) {
					ui.draggable.replaceWith(`<div class="item empty" data-slot="${ui.draggable.data('slot')}"></div>`);
				} else {
					let newMovedAmount = itemAmount - amount;
					let newMovedWeight = parseFloat(ui.draggable.data("peso")) * newMovedAmount;

					ui.draggable.data('amount',newMovedAmount);
					ui.draggable.children(".top").children(".itemAmount").html(formatarNumero(newMovedAmount) + "x");
					ui.draggable.children(".top").children(".itemWeight").html(newMovedWeight.toFixed(2));
				}
			} else {
				if (origin === "invRight" && tInv === "invLeft") return;

				let clone1 = ui.draggable.clone();
				let clone2 = $(this).clone();

				let slot1 = ui.draggable.data("slot");
				let slot2 = $(this).data("slot");

				ui.draggable.replaceWith(clone2);
				$(this).replaceWith(clone1);

				$(clone1).data("slot",slot2);
				$(clone2).data("slot",slot1);
			}

			updateDrag();

			if (tInv === "invLeft" ){
				if (origin === "invLeft"){
					$.post("http://shops/updateSlot",JSON.stringify({
						item: itemData.key,
						slot: itemData.slot,
						target: target,
						amount: parseInt(amount)
					}));

					$(".amount").val("");
				} else if (origin === "invRight"){
					$.post("http://shops/functionShops",JSON.stringify({
						shop: selectShop,
						item: itemData.key,
						slot: target,
						amount: parseInt(amount)
					}));

					$(".amount").val("");
				}
			} else if (tInv === "invRight"){
				if (origin === "invLeft" && selectType === "Sell"){
					$.post("http://shops/functionShops",JSON.stringify({
						shop: selectShop,
						item: itemData.key,
						slot: itemData.slot,
						amount: parseInt(amount)
					}));

					$(".amount").val("");
				}
			}
		}
	});

	$(".items-slots li").droppable({
		hoverClass: "hoverControl",
		drop: function(event,ui){
			if(ui.draggable.parent()[0] == undefined) return;
			
			const shiftPressed = event.shiftKey;
			const origin = ui.draggable.parent()[0].className;
			if (origin === undefined) return;
			const tInv = $(this).parent()[0].className;

			itemData = { key: ui.draggable.data("item-key"), slot: ui.draggable.data("slot") };
			const target = $(this).data("slot");

			if (itemData.key === undefined || target === undefined) return;

			let amount = 0;
			let itemAmount = parseInt(ui.draggable.data("amount"));

			if (shiftPressed)
				amount = itemAmount;
			else if($(".amount").val() == "" | parseInt($(".amount").val()) <= 0)
				amount = 1;
			else
				amount = parseInt($(".amount").val());

			if(amount > itemAmount)
				amount = itemAmount;

			$(".populated, .bar, .empty, .use, .send, .deliver .destroy").off("draggable droppable");

			let clone1 = ui.draggable.clone();
			let slot2 = $(this).data("slot");

			if ($(this).children().length < 1) {
				if(amount == itemAmount) {
					let clone2 = $(this).clone();
					let slot1 = ui.draggable.data("slot");

					$(clone1).addClass("bar")
					$(this).html(clone1[0]);

					if (origin.includes("ui-droppable")) {
						ui.draggable.replaceWith("")
					} else {
						ui.draggable.replaceWith(`<div class="item empty" data-slot="${slot1}"></div>`)
					}
					
					$(clone1).data("slot", slot2);
					$(clone2).data("slot", slot1);
				} else {
					let newAmountOldItem = itemAmount - amount;
					let weight = parseFloat(ui.draggable.data("peso"));
					let newWeightClone1 = (amount*weight).toFixed(2);
					let newWeightOldItem = (newAmountOldItem*weight).toFixed(2);
	
					ui.draggable.data("amount",newAmountOldItem);
	
					$(clone1).removeClass("populated").addClass("bar")
					clone1.data("amount",amount);
	
					$(this).html(clone1[0]);
					$(clone1).data("slot",slot2);
	
					ui.draggable.children(".top").children(".itemAmount").html(formatarNumero(ui.draggable.data("amount")) + "x");
					ui.draggable.children(".top").children(".itemWeight").html(newWeightOldItem);
					
					$(clone1).children(".top").children(".itemAmount").html(formatarNumero(clone1.data("amount")) + "x");
					$(clone1).children(".top").children(".itemWeight").html(newWeightClone1);
				}
			} else if (ui.draggable.data("item-key") == $(this).children().data("item-key")) {
				let newSlotAmount = amount + parseInt($(this).children().data("amount"));
				let newSlotWeight = ui.draggable.data("peso") * newSlotAmount;

				$(this).children().data("amount", newSlotAmount);
				$(this).children().children(".top").children(".itemAmount").html(formatarNumero(newSlotAmount) + "x");
				$(this).children().children(".top").children(".itemWeight").html(newSlotWeight.toFixed(2));

				if(amount == itemAmount) {
					ui.draggable.html("")
				} else {
					let newMovedAmount = itemAmount - amount;
					let newMovedWeight = parseFloat(ui.draggable.data("peso")) * newMovedAmount;

					ui.draggable.data("amount",newMovedAmount);
					ui.draggable.children(".top").children(".itemAmount").html(formatarNumero(newMovedAmount) + "x");
					ui.draggable.children(".top").children(".itemWeight").html(newMovedWeight.toFixed(2));
				}
			} else {
				let clone2 = $(this).children().clone();
				let slot1 = ui.draggable.data("slot");

				ui.draggable.replaceWith(clone2[0]);
				$(this).html(clone1[0]);

				$(clone1).data("slot",slot2);
				$(clone2).data("slot",slot1);
			}

			updateDrag();

			if (origin === "invLeft") {
				$.post("http://inventory/updateSlot",JSON.stringify({
					item: itemData.key,
					slot: itemData.slot,
					target: target,
					amount: parseInt(amount)
				}));
			} else if (origin === "invRight") {
				const id = ui.draggable.attr("data-id");
				$.post("http://inventory/pickupItem",JSON.stringify({
					id: id,
					target: target,
					amount: parseInt(amount)
				}));
			}

			$(".amount").val("");
		}
	});

	$(".populated").tooltip({
		create: function(event,ui){
			var max = $(this).attr("data-max");
			var name = $(this).attr("data-name-key");
			var economy = $(this).attr("data-economy");
			var description = $(this).attr("data-description");

			$(this).tooltip({
				content: `<item>${name}</item>${description !== "false" ? "<br><description>"+description+"</description>":""}<br><legenda>Economia: <r>$${economy}</r> <s>|</s> Máximo: <r>${max !== "false" ? max:"S/L"}</r></legenda>`,
				position: { my: "center top+10", at: "center bottom", collision: "flipfit" },
				show: { duration: 10 },
				hide: { duration: 10 }
			});
		}
	});
}
/* --------------------------------------------------- */
const formatarNumero = (n) => {
	var n = n.toString();
	var r = '';
	var x = 0;

	for (var i = n.length; i > 0; i--){
		r += n.substr(i - 1, 1) + (x == 2 && i != 1 ? '.' : '');
		x = x == 2 ? 0 : x + 1;
	}

	return r.split('').reverse().join('');
}
/* --------------------------------------------------- */
const colorPicker = (percent) => {
	var colorPercent = "#2e6e4c";

	if (percent >= 100)
		colorPercent = "rgba(255,255,255,0)";

	if (percent >= 51 && percent <= 75)
		colorPercent = "#fcc458";

	if (percent >= 26 && percent <= 50)
		colorPercent = "#fc8a58";

	if (percent <= 25)
		colorPercent = "#fc5858";

	return colorPercent;
}

const requestShop = () => {
	$.post("http://shops/requestShop",JSON.stringify({ shop: selectShop }),(data) => {
		$(".weight-texts p").html(`${(data["invPeso"]).toFixed(2)}<span>/${(data["invMaxpeso"]).toFixed(2)}</span>`);
		$(".weight-icon svg g rect").css("height", data["invPeso"] / data["invMaxpeso"] * 100 + "%")

		$(".invLeft").html("");
		$(".invRight").html("");

		if (data["invMaxpeso"] > 100)
			data["invMaxpeso"] = 100;

		for (let x = 1; x <= 5; x++) {
			const slot = x.toString();

			if (data["inventoryUser"][slot] !== undefined){
				var v = data["inventoryUser"][slot];
				var maxDurability = 86400 * v["days"];
				var newDurability = (maxDurability - v["durability"]) / maxDurability;
				var actualPercent = newDurability * 100;
				const isDamaged = data["inventoryUser"][slot] ? checkDamaged(data["inventoryUser"][slot]) : false

				if (v["charges"] !== undefined)
					actualPercent = v["charges"];

				if (actualPercent <= 1)
					actualPercent = 1;

				const item = `<div class="item bar" title="" data-max="${v["max"]}" data-economy="${v["economy"]}" data-description="${v["desc"]}" data-amount="${v["amount"]}" data-peso="${v["peso"]}" data-item-key="${v["key"]}" data-name-key="${v["name"]}" data-slot="${slot}" data-idName="${v["idName"]}" data-idBlood="${v["idBlood"]}" data-idPremium="${v["idPremium"]}" data-garage="${v["Garage"]}" data-idVality="${v["idVality"]}" data-locate="${v["Locate"]}" data-visa="${v["Visa"]}" data-gems="${v["Gems"]}" data-idRolepass="${v["idRolepass"]}" data-Suitcase="${v["Suitcase"]}" data-Vehkey="${v["Vehkey"]}" data-Passport="${v["Passport"]}">
					<div class="top">
						<div class="itemWeight">${(v["peso"] * v["amount"]).toFixed(2)}</div>
						<div class="itemAmount">${formatarNumero(v["amount"])}x</div>
					</div>

					<img src="http://jaguareroleplay.com/inventory/${v["index"]}.png"></img>
					<div class="${isDamaged ? 'durabilityBroken' : 'durability'}" style="--percent: ${actualPercent == 1 ? "100" : actualPercent}%; opacity: ${data["inventoryUser"][slot]["durability"] > 0 ? "1" : 0} "></div>
					<div class="itemName">${v["name"]}</div>
				</div>`;

				$(`.items-slots li[data-slot="${slot}"]`).html(item);
			}
		}

		for (let x = 6; x <= data["invMaxpeso"]; x++){
			const slot = x.toString();

			if (data["inventoryUser"][slot] !== undefined){
				var v = data["inventoryUser"][slot];
				var maxDurability = 86400 * v["days"];
				var newDurability = (maxDurability - v["durability"]) / maxDurability;
				var actualPercent = newDurability * 100;
				const isDamaged = data["inventoryUser"][slot] ? checkDamaged(data["inventoryUser"][slot]) : false


				if (v["charges"] !== undefined)
					actualPercent = v["charges"];

				if (actualPercent <= 1)
					actualPercent = 1;

				const item = `<div class="item populated" title="" data-max="${v["max"]}" data-economy="${v["economy"]}" data-description="${v["desc"]}" data-amount="${v["amount"]}" data-peso="${v["peso"]}" data-item-key="${v["key"]}" data-name-key="${v["name"]}" data-slot="${slot}" data-idName="${v["idName"]}" data-idBlood="${v["idBlood"]}" data-idPremium="${v["idPremium"]}" data-garage="${v["Garage"]}" data-idVality="${v["idVality"]}" data-locate="${v["Locate"]}" data-visa="${v["Visa"]}" data-gems="${v["Gems"]}" data-idRolepass="${v["idRolepass"]}" data-Suitcase="${v["Suitcase"]}" data-Vehkey="${v["Vehkey"]}" data-Passport="${v["Passport"]}">
					<div class="top">
						<div class="itemWeight">${(v["peso"] * v["amount"]).toFixed(2)}</div>
						<div class="itemAmount">${formatarNumero(v["amount"])}x</div>
					</div>

					<img src="http://jaguareroleplay.com/inventory/${v["index"]}.png"></img>
					<div class="${isDamaged ? 'durabilityBroken' : 'durability'}" style="--percent: ${actualPercent == 1 ? "100" : actualPercent}%; opacity: ${data["inventoryUser"][slot]["durability"] > 0 ? "1" : 0} "></div>
					<div class="itemName">${v["name"]}</div>
				</div>`;

				$(".invLeft").append(item);
			} else {
				const item = `<div class="item empty" data-slot="${slot}"></div>`;

				$(".invLeft").append(item);
			}
		}

		const nameList2 = data.inventoryShop.sort((a,b) => (a.name > b.name) ? 1: -1);

		for (let x = 1; x <= data["shopSlots"]; x++){
			const slot = x.toString();

			if (nameList2[x-1] !== undefined){
				const v = nameList2[x - 1];

				const item = `<div class="item populated" title="" data-max="${v["max"]}" data-economy="${v["economy"]}" data-description="${v["desc"]}" style="background-image: url('nui://inventory/web-side/images/${v.index}.png'); background-position: center; background-repeat: no-repeat;" data-item-key="${v["key"]}" data-name-key="${v["name"]}" data-price="${v["price"]}" data-peso="${v["peso"]}" data-slot="${slot}">
					<div class="top">
						<div class="itemWeight">${(v["peso"]).toFixed(2)}</div>
						<div class="itemPrice">$${formatarNumero(v["price"])}</div>
					</div>

					<img src="http://jaguareroleplay.com/inventory/${v["index"]}.png"></img>
					<div class="itemName">${v["name"]}</div>
				</div>`;

				$(".invRight").append(item);
			} else {
				const item = `<div class="item empty" data-slot="${slot}"></div>`;

				$(".invRight").append(item);
			}
		}
		updateDrag();
	});
}

function somenteNumeros(e){
	var charCode = e.charCode ? e.charCode : e.keyCode;
	if (charCode != 8 && charCode != 9){
		var max = 9;
		var num = $(".amount").val();

		if ((charCode < 48 || charCode > 57)||(num.length >= max)){
			return false;
		}
	}
}