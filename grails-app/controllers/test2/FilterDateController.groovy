package test2

import java.text.SimpleDateFormat
import java.util.Date;
import currency.domain.Transaction

class FilterDateController {
	Date currentDate
    def index() { 
		
		println "Index"
		
	}
	
	def search(){
	
		if (!params.empty&&params.filterDate!=null){
			def filterDate = params.filterDate
			SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd") ;
			currentDate= sdf.parse(filterDate.format("yyyy-MM-dd")) ;
			   
			def listTransactions = Transaction.findAllByDate(currentDate)
			render(view:"index", model:["listTransactions": listTransactions,"filterDate":filterDate])
		}
	}
}
