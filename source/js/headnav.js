class headnav{
    constructor() {
		this.currentId = null;
		this.currentTab = null;
		this.tabContainerHeight = 40;
		let self = this;
		$('.et-hero-tab').click(function() { 
			self.onTabClick(event, $(this)); 
		});
		$(window).scroll(() => { this.onScroll(); });
	}
	onScroll() {
		this.checkTabContainerPosition();
	}
	
	checkTabContainerPosition() {
		let offset = $('.header_area').offset().top + $('.header_area').height() - this.tabContainerHeight;
		if($(window).scrollTop() > offset) {
			$('.main_menu').addClass('et-hero-tabs-container--top');
		} 
		else {
			$('.main_menu').removeClass('et-hero-tabs-container--top');
		}
	}
	
}
new headnav();