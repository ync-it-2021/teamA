<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<!-- 우측  퀵 메뉴 부분 시작입니다 . -->
	<div id="quickmenu" name="quickmenu" class="only-pc">
		<ul class="quick_banner">
			<a href="eventview064b.html?idx=162">
				<li class="nosmell"></li>
			</a>
			<a href="eventviewf89f.html?idx=136">
				<li class="bestbreed"></li>
			</a>
			<a href="eventviewfdd5.html?idx=350">
				<li class="firstbuying"></li>
			</a>
			<a href="eventview9b14.html?idx=462">
				<li class="sale"></li>
			</a>

		</ul>
		<div class="viewed">
			<a href="javascript:gdscroll(-86)" onfocus=blur()>
				<p><img src="../resources/images/quickmenu_arrowup.png"></p>
			</a>
			<p class="tit">VIEWED <span id="num" name="num"></span></p>
			<div id="TODAYLIST2" name="TODAYLIST2" style="height:255px;overflow:hidden;"></div>
			<a href="javascript:gdscroll(86)" onfocus=blur()>
				<p><img src="../resources/images/quickmenu_arrowdown.png"></p>
			</a>
		</div>
		
			<!-- 위로 올라가기 버튼   -->


<!-- 위로 올라기가 버튼 script 종료   -->		
		
		
		
		<div class="go-top">
			<p>TOP</p>
		</div>
	</div>

	<!--  우측측 퀵메뉴 부분  -->
	<script type="text/javascript">
		//퀵메뉴
		$(function () {
			var UI = {
				init: function () { this.quickMenuFn(); },
				initialize: function () {
					this.id = {
						target: { quick: '#quickmenu' }
					};
					this.init();
				},
				quickMenuFn: function () {
					var quick = $(this.id.target.quick);
					var qTop = parseInt(quick.css('top'));

					$(window).scroll(function () {
						var winTop = $(window).scrollTop();
						var preTop = qTop + winTop;
						var newTop = winTop + qTop - (parseInt(quick.css('height')) + qTop - $(window).height() + 10);

						if (newTop <= qTop) {
							newTop = qTop;
						}
						quick.stop().animate({ top: newTop }, 400);
					})
				},

				scrollTop: function (eTarget, speed) {
					var speed = speed || null;
					eTarget.on('click', function () {
						$('html, body').animate({
							scrollTop: $("body").offset().top
						}, speed)
					})
				}
			};
			$(function () {
				UI.initialize();
			})
		})
	</script>
	<!--  우측측 퀵메뉴 부분  끝-->


	<script type="text/javascript">
		var currentCategory = null;
		function showCategory(id, obj) {
			if (currentCategory == id) {
				closeCategory();
				return false;
			} else if (currentCategory) {
				closeCategory();
			}

			$("#best-items").addClass('open');
			$(obj).addClass('active');
			currentCategory = id;

			$(".tmphot").hide();
			$("div [cate=" + id + "]").show();

			// #category-item 에 데이타를 ajax 등으로 넣은 후 success callback으로 사용하세요.
			// setTimeout 은 위 ajax 로 갖고오는 타임과 css animation의 샘플을 위해 넣은 것입니다.
			// @load data
			//		window.setTimeout(function(){
			$("div [cate=" + id + "]").owlCarousel({
				loop: false,
				items: 2,
				margin: 0,
				dotsEach: 2,
				dots: true,
				nav: false,
				navText: ['<img src="../resources/images/btn_prev.png">', '<img src="../resources/images/btn_next.png">'],
				afterUpdate: showItems(),
				responsive: {
					360: { margin: 0, nav: true },
					1000: { margin: 0, nav: true }
				},
			});
			//		}, 100);
		}

		function showItems() {
			$("#best-items").addClass('show-items');
		}

		function closeCategory() {
			$("#best-items li.active").removeClass('active');
			$("#best-items").removeClass('open');
			$("#best-items").removeClass('show-items');
			currentCategory = null;
		}

		//카테고리 기본 오픈, id 와 li seq
		showCategory('1', $("#best-items ul li:eq(0)"));



		function removeHtml(str) {
			var pattern = /[&lt;][^>]*[>]|[<][^>]*[>]/g
			str = str.replace(pattern, "");
			return str;
		}

	</script>
</body>
</html>