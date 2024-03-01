export function mask() {
	//var options = {
	//	onKeyPress: function (cpfcnpj, e, field, options) {
	//		var masks = ['000.000.000-000', '00.000.000/0000-00'];
	//		var mask = (cpfcnpj.length > 14) ? masks[1] : masks[0];
	//		$('.cpfcnpj').mask(mask, options);
	//	}
	//};

	//$('#cpfcnpj').mask('000.000.000-000', options);
	$("#cpfcnpj").keydown(function () {
		v = $("#cpfcnpj").val();

		v = v.replace(/\D/g, "");

		if (v.length <= 11) {
			v = v.replace(/(\d{3})(\d)/, "$1.$2");
			v = v.replace(/(\d{3})(\d)/, "$1.$2");
			v = v.replace(/(\d{3})(\d{1,2})$/, "$1-$2");
			$("#cpfcnpj").val() = v;
		} else {
			v = v.substring(0, 14);
			v = v.replace(/^(\d{2})(\d)/, "$1.$2");
			v = v.replace(/^(\d{2})\.(\d{3})(\d)/, "$1.$2.$3");
			v = v.replace(/\.(\d{3})(\d)/, ".$1/$2");
			v = v.replace(/(\d{4})(\d)/, "$1-$2");
		}
	})
}