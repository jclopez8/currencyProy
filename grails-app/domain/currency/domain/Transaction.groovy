package currency.domain

import java.util.Date;

class Transaction {
	String source
	String destiny
	Date date
	Float units
	Float   rate
	Float  total

	
    static constraints = {
    }
}
