package test2

import currency.domain.History
import currency.domain.Currency

class ListConversionController {

    def index() {
		
		def listCurrency = Currency.list()
		["listCurrency": listCurrency]
	}
}
