$.fn.dataTableExt.afnFiltering.push(
	function( oSettings, aData, iDataIndex ) {
		if ($('#order_from_date').val() != '' || $('#order_to_date').val() != '') {
		var iMin_temp = $('#order_from_date').val();
		if (iMin_temp == '') {
		  iMin_temp = '01/01/1980';
		}
		var iMax_temp = $('#order_to_date').val();
		if (iMax_temp == '') {
		  iMin_temp = '01/01/2014';
		}

		var arr_min = iMin_temp;
		var arr_max = iMax_temp;
		var arr_date = aData[1];

		var iMin =  arr_min;
		var iMax = arr_max;
		var iDate = arr_date;

		if ( iMin == "" && iMax == "" )
		{
			return true;
		}
		else if ( iMin == "" && iDate < iMax )
		{
			return true;
		}
		else if ( iMin <= iDate && "" == iMax )
		{
			return true;
		}
		else if ( iMin <= iDate && iDate <= iMax )
		{
			return true;
		}
		return false;
		}
	}
);