$(document).ready(function(){
	window.addEventListener("message",function(event){
		switch(event["data"]["Action"]){
			case "Open":
				Chest();
				$(".inventory").css("display","flex");
			break;

			case "Close":
				$(".inventory").css("display","none");
				$(".ui-tooltip").hide();
			break;

			case "Refresh":
				Chest();
			break;

			case "Update":
				const weights = [["invPeso", "invMaxpeso"], ["chestPeso", "chestMaxpeso"]]
				$(".header-weight").each(function (i) {
					$(this).find(".weight-texts p").html(`${(event.data[weights[i][0]]).toFixed(2)}<span>/${(event.data[weights[i][1]]).toFixed(2)}</span>`)
					$(this).find(".weight-icon svg g rect").css("height", (event.data[weights[i][0]] / event.data[weights[i][1]]) * 100 + "%");
				})
			break;
		}
	});

	document.onkeyup = function(event){
		switch (event["key"]){
			case "Escape":
				$.post("http://chest/Close");
			break;
		}
	};
});

const updateDrag = () => {
	$(".populated").draggable({
		helper: "clone"
	});

	$(".bar").draggable({
		helper: "clone"
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
				$.post("http://chest/Take",JSON.stringify({
					item: itemData.key,
					slot: itemData.slot,
					target: target,
					amount: parseInt(amount)
				}));
			}

			$(".amount").val("");
		}
	});

	$(".populated").droppable({
		hoverClass: "hoverControl",
		drop: function(event,ui){
			if(ui.draggable.parent()[0] == undefined) return;

			const shiftPressed = event.shiftKey;
			const origin = ui.draggable.parent()[0].className != "ui-droppable" ?  ui.draggable.parent()[0].className : ui.draggable[0].className;
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

			$(".populated, .bar, empty, .use, .send, .deliver .destroy").off("draggable droppable");

			if(ui.draggable.data("item-key") == $(this).data("item-key")){
				let newSlotAmount = amount + parseInt($(this).data("amount"));
				let newSlotWeight = ui.draggable.data("peso") * newSlotAmount;

				$(this).data("amount",newSlotAmount);
				$(this).children(".top").children(".itemAmount").html(formatarNumero(newSlotAmount) + "x");
				$(this).children(".top").children(".itemWeight").html(newSlotWeight.toFixed(2));

				if(amount == itemAmount) {
					ui.draggable.replaceWith(`<div class="item empty" data-slot="${ui.draggable.data("slot")}"></div>`);
				} else {
					let newMovedAmount = itemAmount - amount;
					let newMovedWeight = parseFloat(ui.draggable.data("peso")) * newMovedAmount;

					ui.draggable.data("amount",newMovedAmount);
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

			if (origin === "invLeft" && tInv === "invLeft"){
				$.post("http://inventory/Update",JSON.stringify({
					item: itemData.key,
					slot: itemData.slot,
					target: target,
					amount: parseInt(amount)
				}));
			} else if (origin === "invRight" && tInv === "invLeft"){
				$.post("http://chest/Take",JSON.stringify({
					item: itemData.key,
					slot: itemData.slot,
					target: target,
					amount: parseInt(amount)
				}));
			} else if ((origin === "invLeft" || origin.includes("bar")) && tInv === "invRight"){
				$.post("http://chest/Store",JSON.stringify({
					item: itemData.key,
					slot: itemData.slot,
					target: target,
					amount: parseInt(amount)
				}));
			} else if (origin === "invRight" && tInv === "invRight"){
				$.post("http://chest/Update",JSON.stringify({
					item: itemData.key,
					slot: itemData.slot,
					target: target,
					amount: parseInt(amount)
				}));
			}	

			$(".amount").val("");
		}
	});

	$('.empty').droppable({
		hoverClass: 'hoverControl',
		drop: function(event,ui){
			if(ui.draggable.parent()[0] == undefined) return;

			const shiftPressed = event.shiftKey;
			const origin = ui.draggable.parent()[0].className != "ui-droppable" ?  ui.draggable.parent()[0].className : ui.draggable[0].className;
			if (origin === undefined) return;
			const tInv = $(this).parent()[0].className;
			
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

			$('.populated, .bar, empty, .use, .send, .deliver .destroy').off("draggable droppable");

			let clone1 = ui.draggable.clone();
			let slot2 = $(this).data("slot"); 

			if(amount == itemAmount){
				let clone2 = $(this).clone();
				let slot1 = ui.draggable.data("slot");

				$(this).replaceWith(clone1);
				ui.draggable.replaceWith(clone2);
				
				$(clone1).data("slot", slot2);
				$(clone2).data("slot", slot1);
			} else {
				let newAmountOldItem = itemAmount - amount;
				let weight = parseFloat(ui.draggable.data("peso"));
				let newWeightClone1 = (amount*weight).toFixed(2);
				let newWeightOldItem = (newAmountOldItem*weight).toFixed(2);

				ui.draggable.data("amount",newAmountOldItem);

				clone1.data("amount",amount);

				$(this).replaceWith(clone1);
				$(clone1).data("slot",slot2);

				ui.draggable.children(".top").children(".itemAmount").html(formatarNumero(ui.draggable.data("amount")) + "x");
				ui.draggable.children(".top").children(".itemWeight").html(newWeightOldItem);
				
				$(clone1).children(".top").children(".itemAmount").html(formatarNumero(clone1.data("amount")) + "x");
				$(clone1).children(".top").children(".itemWeight").html(newWeightClone1);
			}

			updateDrag();

			if (origin === "invLeft" && tInv === "invLeft"){
				$.post("http://inventory/Update",JSON.stringify({
					item: itemData.key,
					slot: itemData.slot,
					target: target,
					amount: parseInt(amount)
				}));
			} else if (origin === "invRight" && tInv === "invLeft"){
				$.post("http://chest/Take",JSON.stringify({
					item: itemData.key,
					slot: itemData.slot,
					target: target,
					amount: parseInt(amount)
				}));
			} else if ((origin === "invLeft" || origin.includes("bar")) && tInv === "invRight"){
				$.post("http://chest/Store",JSON.stringify({
					item: itemData.key,
					slot: itemData.slot,
					target: target,
					amount: parseInt(amount)
				}));
			} else if (origin === "invRight" && tInv === "invRight"){
				$.post("http://chest/Update",JSON.stringify({
					item: itemData.key,
					slot: itemData.slot,
					target: target,
					amount: parseInt(amount)
				}));
			}

			$(".amount").val("");
		}
	});
	
	$(".destroy").droppable({
		hoverClass: "hoverControl",
		drop: function(event,ui){
			if(ui.draggable.parent()[0] == undefined) return;

			const shiftPressed = event.shiftKey;
			const origin = ui.draggable.parent()[0].className;
			if (origin === undefined || origin === "invRight") return;
			itemData = { key: ui.draggable.data("item-key"), slot: ui.draggable.data("slot") };

			if (itemData.key === undefined) return;

			let amount = $(".amount").val();
			if (shiftPressed) amount = ui.draggable.data("amount");

			$.post("http://inventory/Destruir",JSON.stringify({
				slot: itemData.slot,
				amount: parseInt(amount)
			}));

			$(".amount").val("");
		}
	});

	$(".deliver").droppable({
		hoverClass: "hoverControl",
		drop: function(event,ui){
			if(ui.draggable.parent()[0] == undefined) return;

			const shiftPressed = event.shiftKey;
			const origin = ui.draggable.parent()[0].className;
			if (origin === undefined || origin === "invRight") return;
			itemData = { key: ui.draggable.data("item-key"), slot: ui.draggable.data("slot") };

			if (itemData.key === undefined) return;

			let amount = $(".amount").val();
			if (shiftPressed) amount = ui.draggable.data("amount");

			$.post("http://inventory/Deliver",JSON.stringify({
				slot: itemData.slot
			}));

			$(".amount").val("");
		}
	});

	$(".populated").tooltip({
		create: function(event,ui){
			var max = $(this).attr("data-max");
			var peso = $(this).attr("data-peso");
			var name = $(this).attr("data-name-key");
			var Vehkey = $(this).attr("data-Vehkey");
			var economy = $(this).attr("data-economy");
			var Suitcase = $(this).attr("data-Suitcase");
			var description = $(this).attr("data-description");
			var contents = `
				<div class="header">
					<div class="header-title">
						<div class="header-item">
							<h3>${name}</h3>
							<div class="item-weight">
								<svg xmlns="http://www.w3.org/2000/svg" style="width: 1.125rem; height: 1.125rem;" width="18" height="18" viewBox="0 0 18 18" fill="none">
									<path d="M9 5.25C9.2125 5.25 9.39075 5.178 9.53475 5.034C9.67875 4.89 9.7505 4.712 9.75 4.5C9.7495 4.288 9.6775 4.11 9.534 3.966C9.3905 3.822 9.2125 3.75 9 3.75C8.7875 3.75 8.6095 3.822 8.466 3.966C8.3225 4.11 8.2505 4.288 8.25 4.5C8.2495 4.712 8.3215 4.89025 8.466 5.03475C8.6105 5.17925 8.7885 5.251 9 5.25ZM11.1188 5.25H12.4313C12.8063 5.25 13.1313 5.375 13.4063 5.625C13.6813 5.875 13.85 6.18125 13.9125 6.54375L14.9813 14.0438C15.0438 14.4938 14.9283 14.8907 14.6348 15.2347C14.3413 15.5787 13.963 15.7505 13.5 15.75H4.5C4.0375 15.75 3.65925 15.5782 3.36525 15.2347C3.07125 14.8912 2.95575 14.4943 3.01875 14.0438L4.0875 6.54375C4.15 6.18125 4.31875 5.875 4.59375 5.625C4.86875 5.375 5.19375 5.25 5.56875 5.25H6.88125C6.84375 5.125 6.8125 5.00325 6.7875 4.88475C6.7625 4.76625 6.75 4.638 6.75 4.5C6.75 3.875 6.96875 3.34375 7.40625 2.90625C7.84375 2.46875 8.375 2.25 9 2.25C9.625 2.25 10.1563 2.46875 10.5938 2.90625C11.0313 3.34375 11.25 3.875 11.25 4.5C11.25 4.6375 11.2375 4.76575 11.2125 4.88475C11.1875 5.00375 11.1563 5.1255 11.1188 5.25Z" fill="#EFBE28"/>
								</svg>
								<p>${peso}kg</p>
							</div>
						</div> 
						<p>Utilizavel</p>
					</div>
					${description !== "false" ? `<div class="header-description">${description}</div>` : ""}
				</div>
				<ul class="main">
					<li>
						${Vehkey !== "undefined" ? `
							<div class="li-title">Placa</div>
							<div class="li-value">${Vehkey}</div>
							` : `
							<div class="li-title">Economia</div>
							<div class="li-value">$${economy}</div>`
						}
					</li>
					<li>
						<div class="li-title">Máximo</div>
						<div class="li-value">${max !== "false" ? max:"S/L"}</div>
					</li>
				</ul>
			`

			if (Suitcase !== "undefined"){
				contents = `
					<div class="header">
						<div class="header-title">
							<div class="header-item">
								<h3>${name}</h3>
								<div class="item-weight">
									<svg xmlns="http://www.w3.org/2000/svg" style="width: 1.125rem; height: 1.125rem;" width="18" height="18" viewBox="0 0 18 18" fill="none">
										<path d="M9 5.25C9.2125 5.25 9.39075 5.178 9.53475 5.034C9.67875 4.89 9.7505 4.712 9.75 4.5C9.7495 4.288 9.6775 4.11 9.534 3.966C9.3905 3.822 9.2125 3.75 9 3.75C8.7875 3.75 8.6095 3.822 8.466 3.966C8.3225 4.11 8.2505 4.288 8.25 4.5C8.2495 4.712 8.3215 4.89025 8.466 5.03475C8.6105 5.17925 8.7885 5.251 9 5.25ZM11.1188 5.25H12.4313C12.8063 5.25 13.1313 5.375 13.4063 5.625C13.6813 5.875 13.85 6.18125 13.9125 6.54375L14.9813 14.0438C15.0438 14.4938 14.9283 14.8907 14.6348 15.2347C14.3413 15.5787 13.963 15.7505 13.5 15.75H4.5C4.0375 15.75 3.65925 15.5782 3.36525 15.2347C3.07125 14.8912 2.95575 14.4943 3.01875 14.0438L4.0875 6.54375C4.15 6.18125 4.31875 5.875 4.59375 5.625C4.86875 5.375 5.19375 5.25 5.56875 5.25H6.88125C6.84375 5.125 6.8125 5.00325 6.7875 4.88475C6.7625 4.76625 6.75 4.638 6.75 4.5C6.75 3.875 6.96875 3.34375 7.40625 2.90625C7.84375 2.46875 8.375 2.25 9 2.25C9.625 2.25 10.1563 2.46875 10.5938 2.90625C11.0313 3.34375 11.25 3.875 11.25 4.5C11.25 4.6375 11.2375 4.76575 11.2125 4.88475C11.1875 5.00375 11.1563 5.1255 11.1188 5.25Z" fill="#EFBE28"/>
									</svg>
									<p>${peso}kg</p>
								</div>
							</div> 
							<p>Utilizavel</p>
						</div>
						<div class="header-description">Contém $${Suitcase} dólares em espécie.</div>
					</div>
					<ul class="main">
						<li>
							<div class="li-title">Economia</div>
							<div class="li-value">$${economy}</div>
						</li>
						<li>
							<div class="li-title">Máximo</div>
							<div class="li-value">${max !== "false" ? max:"S/L"}</div>
						</li>
					</ul>
				`
			}

			if (name == "Rg" || name == "OAB" || name == "Distintivo"){
				var idName = $(this).attr("data-idName");
				var idBlood = $(this).attr("data-idBlood");
				var Passport = $(this).attr("data-Passport");
				var idVality = $(this).attr("data-idVality");
				var Gems = $(this).attr("data-gems");
				var Garage = $(this).attr("data-garage");
				var Locate = $(this).attr("data-locate");
				var Visa = $(this).attr("data-visa");
				var idPremium = $(this).attr("data-idPremium");

				contents = `
					<div class="header">
						<div class="header-title">
							<div class="header-item">
								<h3>${name} - ${Passport}</h3>
								<div class="item-weight">
									<svg xmlns="http://www.w3.org/2000/svg" style="width: 1.125rem; height: 1.125rem;" width="18" height="18" viewBox="0 0 18 18" fill="none">
										<path d="M9 5.25C9.2125 5.25 9.39075 5.178 9.53475 5.034C9.67875 4.89 9.7505 4.712 9.75 4.5C9.7495 4.288 9.6775 4.11 9.534 3.966C9.3905 3.822 9.2125 3.75 9 3.75C8.7875 3.75 8.6095 3.822 8.466 3.966C8.3225 4.11 8.2505 4.288 8.25 4.5C8.2495 4.712 8.3215 4.89025 8.466 5.03475C8.6105 5.17925 8.7885 5.251 9 5.25ZM11.1188 5.25H12.4313C12.8063 5.25 13.1313 5.375 13.4063 5.625C13.6813 5.875 13.85 6.18125 13.9125 6.54375L14.9813 14.0438C15.0438 14.4938 14.9283 14.8907 14.6348 15.2347C14.3413 15.5787 13.963 15.7505 13.5 15.75H4.5C4.0375 15.75 3.65925 15.5782 3.36525 15.2347C3.07125 14.8912 2.95575 14.4943 3.01875 14.0438L4.0875 6.54375C4.15 6.18125 4.31875 5.875 4.59375 5.625C4.86875 5.375 5.19375 5.25 5.56875 5.25H6.88125C6.84375 5.125 6.8125 5.00325 6.7875 4.88475C6.7625 4.76625 6.75 4.638 6.75 4.5C6.75 3.875 6.96875 3.34375 7.40625 2.90625C7.84375 2.46875 8.375 2.25 9 2.25C9.625 2.25 10.1563 2.46875 10.5938 2.90625C11.0313 3.34375 11.25 3.875 11.25 4.5C11.25 4.6375 11.2375 4.76575 11.2125 4.88475C11.1875 5.00375 11.1563 5.1255 11.1188 5.25Z" fill="#EFBE28"/>
									</svg>
									<p>${peso}kg</p>
								</div>
							</div> 
							<p>Utilizavel</p>
						</div>
						${description !== "false" ? `<div class="header-description">${description}</div>` : ""}
					</div>
					<ul class="main">
						<li>
							<div class="li-title">Nome</div>
							<div class="li-value">$${idName}</div>
						</li>
						<li>
							<div class="li-title">Tipo Sangüineo</div>
							<div class="li-value">${idBlood}</div>
						</li>
						<li>
							<div class="li-title">Vagas na Garagem</div>
							<div class="li-value">${Garage}</div>
						</li>
						<li>
							<div class="li-title">Validade</div>
							<div class="li-value">${idVality}</div>
						</li>
						<li>
							<div class="li-title">Visto</div>
							<div class="li-value">${Visa}</div>
						</li>
						<li>
							<div class="li-title">Origem do Documento</div>
							<div class="li-value">${Locate}</div>
						</li>
						<li>
							<div class="li-title">Diamantes</div>
							<div class="li-value">${Gems}</div>
						</li>
						<li>
							<div class="li-title">Premium</div>
							<div class="li-value">${idPremium}</div>
						</li>
					</ul>
				`
			}

			$(this).tooltip({
				content: contents,
				position: { my: "bottom+7", at: "top", collision: "flipfit" },
				show: { duration: 10 },
				hide: { duration: 10 }
			});
		}
	});
}

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

const Chest = () => {
	$.post("http://chest/Chest",JSON.stringify({}),(data) => {
		const weights = [["invPeso", "invMaxpeso"], ["chestPeso", "chestMaxpeso"]]
		$(".header-weight").each(function (i) {
			$(this).find(".weight-texts p").html(`${(data[weights[i][0]]).toFixed(2)}<span>/${(data[weights[i][1]]).toFixed(2)}</span>`)
			$(this).find(".weight-icon svg g rect").css("height", (data[weights[i][0]] / data[weights[i][1]]) * 100 + "%");
		})

		$(".invLeft").html("");
		$(".invRight").html("");
		$(`.items-slots`).html("")


		if (data["invMaxpeso"] > 100)
			data["invMaxpeso"] = 100;

		for (let x = 1; x <= 5; x++) {
			const slot = x.toString();

			if (data["Inventory"][slot] !== undefined){
				var v = data["Inventory"][slot];
				var maxDurability = 86400 * v["days"];
				var newDurability = (maxDurability - v["durability"]) / maxDurability;
				var actualPercent = newDurability * 100;

				if (v["charges"] !== undefined)
					actualPercent = v["charges"];

				if (actualPercent <= 1)
					actualPercent = 1;

				const item = `<div class="item bar" title="" data-max="${v["max"]}" data-economy="${v["economy"]}" data-description="${v["desc"]}" data-amount="${v["amount"]}" data-peso="${v["peso"]}" data-item-key="${v["key"]}" data-name-key="${v["name"]}" data-slot="${slot}" data-idName="${v["idName"]}" data-idBlood="${v["idBlood"]}" data-idPremium="${v["idPremium"]}" data-garage="${v["Garage"]}" data-idVality="${v["idVality"]}" data-locate="${v["Locate"]}" data-visa="${v["Visa"]}" data-gems="${v["Gems"]}" data-idRolepass="${v["idRolepass"]}" data-Suitcase="${v["Suitcase"]}" data-Vehkey="${v["Vehkey"]}" data-Passport="${v["Passport"]}">
					<div class="top">
						<div class="itemWeight">${(v["peso"] * v["amount"]).toFixed(2)}</div>
						<div class="itemAmount">${formatarNumero(v["amount"])}x</div>
					</div>

					<img src="http://181.215.236.140/inventory/${v["index"]}.png"></img>
					<div class="durability" style="--percent: ${actualPercent == 1 ? "100" : actualPercent}%; --color: ${colorPicker(actualPercent)}; opacity: ${data["Inventory"][slot]["durability"] > 0 ? 1 : 0} "></div>
					<div class="itemName">${v["name"]}</div>
				</div>`;

				$(`.items-slots`).append(`<li data-slot="${slot}">${item}</li>`);
			} else {
				const item = `<li data-slot="${slot}"></li>`;

				$(`.items-slots`).append(item);
			}
		}

		for (let x = 6; x <= data["invMaxpeso"]; x++){
			const slot = x.toString();

			if (data["Inventory"][slot] !== undefined){
				var v = data["Inventory"][slot];
				var maxDurability = 86400 * v["days"];
				var newDurability = (maxDurability - v["durability"]) / maxDurability;
				var actualPercent = newDurability * 100;

				if (v["charges"] !== undefined)
					actualPercent = v["charges"];

				if (actualPercent <= 1)
					actualPercent = 1;

				const item = `<div class="item populated" title="" data-max="${v["max"]}" data-economy="${v["economy"]}" data-description="${v["desc"]}" data-amount="${v["amount"]}" data-peso="${v["peso"]}" data-item-key="${v["key"]}" data-name-key="${v["name"]}" data-slot="${slot}" data-idName="${v["idName"]}" data-idBlood="${v["idBlood"]}" data-idPremium="${v["idPremium"]}" data-garage="${v["Garage"]}" data-idVality="${v["idVality"]}" data-locate="${v["Locate"]}" data-visa="${v["Visa"]}" data-gems="${v["Gems"]}" data-idRolepass="${v["idRolepass"]}" data-Suitcase="${v["Suitcase"]}" data-Vehkey="${v["Vehkey"]}" data-Passport="${v["Passport"]}">
					<div class="top">
						<div class="itemWeight">${(v["peso"] * v["amount"]).toFixed(2)}</div>
						<div class="itemAmount">${formatarNumero(v["amount"])}x</div>
					</div>

					<img src="http://181.215.236.140/inventory/${v["index"]}.png"></img>
					<div class="durability" style="--percent: ${actualPercent == 1 ? "100" : actualPercent}%; --color: ${colorPicker(actualPercent)}; opacity: ${data["Inventory"][slot]["durability"] > 0 ? 1 : 0} "></div>
					<div class="itemName">${v["name"]}</div>
				</div>`;

				$(".invLeft").append(item);
			} else {
				const item = `<div class="item empty" data-slot="${slot}"></div>`;

				$(".invLeft").append(item);
			}
		}

		for (let x = 1; x <= 100; x++){
			const slot = x.toString();

			if (data.Chest[slot] !== undefined){
				const v = data.Chest[slot];
				var maxDurability = 86400 * v["days"];
				var newDurability = (maxDurability - v["durability"]) / maxDurability;
				var actualPercent = newDurability * 100;

				if (v["charges"] !== undefined)
					actualPercent = v["charges"];

				if (actualPercent <= 1)
					actualPercent = 1;

				const item = `<div class="item populated" title="" data-max="${v["max"]}" data-economy="${v["economy"]}" data-description="${v["desc"]}" data-amount="${v["amount"]}" data-peso="${v["peso"]}" data-item-key="${v["key"]}" data-name-key="${v["name"]}" data-slot="${slot}" data-idName="${v["idName"]}" data-idBlood="${v["idBlood"]}" data-idPremium="${v["idPremium"]}" data-garage="${v["Garage"]}" data-idVality="${v["idVality"]}" data-locate="${v["Locate"]}" data-visa="${v["Visa"]}" data-gems="${v["Gems"]}" data-idRolepass="${v["idRolepass"]}" data-Suitcase="${v["Suitcase"]}" data-Vehkey="${v["Vehkey"]}" data-Passport="${v["Passport"]}">
					<div class="top">
						<div class="itemWeight">${(v["peso"] * v["amount"]).toFixed(2)}</div>
						<div class="itemAmount">${formatarNumero(v["amount"])}x</div>
					</div>

					<img src="http://181.215.236.140/inventory/${v["index"]}.png"></img>
					<div class="durability" style="--percent: ${actualPercent == 1 ? "100" : actualPercent}%; --color: ${colorPicker(actualPercent)}; opacity: ${data["Chest"][slot]["durability"] > 0 ? 1 : 0} "></div>
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

const formatarNumero = n => {
	var n = n.toString();
	var r = '';
	var x = 0;

	for (var i = n.length; i > 0; i--) {
		r += n.substr(i - 1, 1) + (x == 2 && i != 1 ? '.' : '');
		x = x == 2 ? 0 : x + 1;
	}

	return r.split('').reverse().join('');
}