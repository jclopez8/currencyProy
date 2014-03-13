package test2

import java.text.SimpleDateFormat
import java.util.Date;
import currency.domain.Transaction

class FilterController {
	Date currentDate
    def index() { 

	   
		def listTransactions = Transaction.list()
	    ["listTransactions": listTransactions]
	}
}
