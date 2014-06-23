/*
 * onHoverId = the id of a div. When you hover over this div, the div with id hiddenDivId will appear.
 * hiddenDivId = when you mouse over onHoverId, this div will appear. 
 */
function Header(headerId, onHoverId, hiddenDivId) {
	console.log(numCategories);
	headerElem = document.getElementById(headerId);
	fixedPos = false;
	window.onscroll = function(event) {
		if ((!fixedPos) && (window.pageYOffset >= 90)) {
			//headerElem.className = "headerContainerSticky";
		}
	}
	var onHoverDiv = document.getElementById(onHoverId);
	var hiddenDiv = document.getElementById(hiddenDivId);
	
	linkIsMousedOver = false;
	onHoverDiv.onmouseover = function(event) {
		linkIsMousedOver = true;
		hiddenDiv.className = "drop active";
	}
	onHoverDiv.onmouseout = function(event) {
		linkIsMousedOver = false;
		if (!menuIsMousedOver) {
			hiddenDiv.className = "hidden";
		}
	}
	menuIsMousedOver = false;
	hiddenDiv.onmouseover = function(event) {
		menuIsMousedOver = true;
		this.className = "drop active";
	}
	hiddenDiv.onmouseout = function(event) {
		menuIsMousedOver = false;
		if (!linkIsMousedOver) {
			hiddenDiv.className = "hidden";
		}
	}
}
