package currency.domain

class Currency {
   
	Integer id
   String source
	String destiny
	Float rate
	static hasMany = [history:History]
	
//	static mapping = {
//		history jointable:false, column:'idCurrency'
//	}
    static constraints = {
		
    }
}
