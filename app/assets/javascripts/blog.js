$( document ).ready(function() {
	//change color on hover
	$("#create_post_button").hover(
		function() {
			$( this ).toggleClass("on_hover")
			$( this ).toggleClass("link")
		}
	);
	//submit form on click
	$("#create_post_button").click(function() {
		document.getElementById("blog_form").submit();
	});
});