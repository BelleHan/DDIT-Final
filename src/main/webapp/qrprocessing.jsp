<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%--     <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/instascan.min.js"></script> --%>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/webrtc-adapter/3.3.3/adapter.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.10/vue.min.js"></script>
<script type="text/javascript" src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
</head>
<body>
    <div id="app">
      <div class="sidebar">
        <section class="cameras">
          <h2>Cameras</h2>
          <ul>
            <li v-if="cameras.length === 0" class="empty">No cameras found</li>
            <li v-for="camera in cameras">
              <span v-if="camera.id == activeCameraId" :title="formatName(camera.name)" class="active">{{ formatName(camera.name) }}</span>
              <span v-if="camera.id != activeCameraId" :title="formatName(camera.name)">
                <a @click.stop="selectCamera(camera)">{{ formatName(camera.name) }}</a>
              </span>
            </li>
          </ul>
        </section>
        </div>
      <div class="preview-container">
        <video id="preview"></video>
      </div>
    </div>
	<div class="logisTaking">
		<input type="text" id="goodsCode" value="코드가 들어올 자리"> <input
			type="text" id="goodsName" value="이름이 들어올 자리">
	</div>
	<script type="text/javascript">
    var t = 'test';
    let scanner = new Instascan.Scanner({ 
    		video: document.getElementById('preview')
    	});
    scanner.addListener('scan', function (content) {
	    t = content;
	    if (t != 'test') {
		    	tt();
	    	}
    });
    
    Instascan.Camera.getCameras().then(function (cameras) {
	    if (cameras.length > 0) {
	    	scanner.start(cameras[0]);
		} else {
	    	console.error('No cameras found.');
		}
	}).catch(function (e) {
		console.error(e);
	});
    
	function tt() {
		console.log(t);
		$.ajax({
			url : "keyword/hqgoodsdetail.do"
			, data : {"hqgoods" : t}
			, contentType: "application/json; charset=UTF-8"
			, success : function(data) {
		    	console.log(data);
				document.querySelector('#goodsCode').setAttribute('value', data.hq_goods_code);
				document.querySelector('#goodsName').setAttribute('value', data.hq_goods_name);
		}
		})
	}
	
	var app = new Vue({
		  el: '#app',
		  data: {
		    scanner: null,
		    activeCameraId: null,
		    cameras: [],
		    scans: []
		  },
		  mounted: function () {
		    var self = this;
		    self.scanner = new Instascan.Scanner({ video: document.getElementById('preview'), scanPeriod: 5 });
		    self.scanner.addListener('scan', function (content, image) {
		      self.scans.unshift({ date: +(Date.now()), content: content });
		    });
		    Instascan.Camera.getCameras().then(function (cameras) {
		      self.cameras = cameras;
		      if (cameras.length > 0) {
		        self.activeCameraId = cameras[0].id;
		        self.scanner.start(cameras[0]);
		      } else {
		        console.error('No cameras found.');
		      }
		    }).catch(function (e) {
		      console.error(e);
		    });
		  },
		  methods: {
		    formatName: function (name) {
		      return name || '(unknown)';
		    },
		    selectCamera: function (camera) {
		      this.activeCameraId = camera.id;
		      this.scanner.start(camera);
		    }
		  }
		});
    </script>
</body>
</html>