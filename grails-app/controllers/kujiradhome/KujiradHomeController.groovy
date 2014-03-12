package kujiradhome

// kujiradHomeのコントr－ら　ここのメソッドがアクション
class KujiradHomeController {
	def index() {
		def arr = [
			'title':"Sample Page",
			'msg':"お名前は？",
			'value':''
		];
		arr;
	}

	def form() {
		def arr = [
			'title':"Sample Page",
			'msg':"お名前は？",
			'value':''
		];

		if (request.method=='POST'){
			if (params['input'] != null){
				arr['value'] = params.input;
				arr['msg'] = 'ハロー、' + params.input + 'さん！'
			}
		}
		render(view:'index', model:arr)
	}
}
