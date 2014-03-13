if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}
function someButtonClick() {
    alert("on click");
  }

window.onload = function () { 

	setLastCurrencyValues();	    
};

function setLastCurrencyValues() {
    var lastCurrency1=document.getElementById("currencyHidden1");
    var lastCurrency2=  document.getElementById("currencyHidden2");
    setCombo(lastCurrency1,'currency1');
    setCombo(lastCurrency2,'currency2');
  }


function setCombo(lastCurrency,comboId)
{
	var combo = document.getElementById(comboId);
	for (var i=0 ; i < combo.length; i++){
		//alert(combo.options[i].value);
		if (combo.options[i].value==lastCurrency.value){
			 combo.selectedIndex = i;
		}
	}
	
}