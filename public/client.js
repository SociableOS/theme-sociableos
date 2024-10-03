'use strict';

/*
	Hey there!

	This is the client file for your theme. If you need to do any client-side work in javascript,
	this is where it needs to go.

	You can listen for page changes by writing something like this:

	  $(window).on('action:ajaxify.end', function(ev, data) {
		var url = data.url;
		console.log('I am now at: ' + url);
	  });
*/

$(document).ready(function () {
	$(window).on('action:ajaxify.end', function(ev, data) {
		var url = data.url;
		console.log('I am now at: ' + url);
		configureCards();
	});

	socket.on('event:new_notification', function(data) {
		console.log(data);
	});

	socket.on('event:addCard', function(data) {
		addCard(data);
	});
});

function configureCards() {
	$('ul.cards-stack').off('click').on('click', function(){
		$(this).toggleClass('transition');
	});

	app.loadJQueryUI(() => {
		$('ul.cards-stack .card').draggable();
		$('.user-droppable').droppable({
		drop: function( event, ui ) {
			console.log(event, ui);
			var cardTitle = $(ui.draggable).find('.card-title').text();
			var player = $(this).find('.fw-semibold').text();
			$(ui.draggable).remove();
			$(this).addClass('jackInTheBox');
			require(['alerts'], function (alerts) {
				alerts.success(`You just played the <strong>${cardTitle}</strong> card on ${player}!`);
			});
		}
		});
	});
}

function addCard(data) {
	var count = $('ul.cards-stack .card').length + 1;
	var $html = `<li class="card card-${count}" style="width: 10rem;"><img src="/assets/plugins/nodebb-theme-sociableos/assets/1.jpg" class="card-img-top" alt="..."/><div class="card-body"><h5 class="card-title">Make it Rain</h5><p class="card-text">Make it rain in a friend's game!</p></div></li>`;
	
	$('ul.cards-stack').append($html);
	configureCards();
}