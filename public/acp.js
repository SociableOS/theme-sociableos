
$(document).ready(function () {
	$(window).on('action:ajaxify.end', function(ev, data) {
		var url = data.url;
		if (url === 'admin/extend/rewards') {
            initializeCards();
        }
	});
});

function initializeCards() {
    
}