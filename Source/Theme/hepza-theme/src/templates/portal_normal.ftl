<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key=" lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${html_title}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />

	<script data-senna-off="true" src="${javascript_folder}/jquery.min.js" type="text/javascript"></script>
	<script data-senna-off="true" src="${javascript_folder}/popper.js" type="text/javascript"></script>
	<script data-senna-off="true" src="${javascript_folder}/owl.carousel.min.js" type="text/javascript"></script>
	<script data-senna-off="true" src="${javascript_folder}/toggle-control-menu.js" type="text/javascript"></script>
	<script data-senna-off="true" src="${javascript_folder}/custom.js" type="text/javascript"></script>

</head>

<body class="${css_class}">
	<@liferay_ui["quick-access"] contentId="#main-content" />

	<@liferay_util["include"] page=body_top_include />

	<@liferay.control_menu />

	<#assign preferences=freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone"
		, "destination" : "/search" }) />
	<div class="container-full position-relative" id="wrapper">
		<header id="banner" role="banner">
			<nav class="hheader navbar align-content-between bg-light m-0 p-0 pt-1 pb-1">
				<a class="navbar-brand" href="/index">
					<div class="d-flex flex-row align-content-between ">
						<img src="${site_logo}" width="48px" alt="" />
						<div class="d-flex flex-column align-self-center">
							<p class="pb-2">CỔNG THÔNG TIN ĐIỆN TỬ</p>
							<p class="sub-title-navbrand">BAN QUẢN LÝ KHU CHẾ XUẤT & CÔNG NGHIỆP TP.HCM</p>
						</div>
					</div>
				</a>

				<div class="d-flex flex-wrap m-0 nav-right align-items-center">
					<!-- tìm kiếm -->
					<div class="autofit-col search-bar">
						<@liferay.search_bar default_preferences="${preferences}" />
					</div>

					<div class="address pr-4">
						<div class="d-flex flex-row">
							<div class="d-flex flex-row align-items-center">
								<img width="16px" height="16px"
									src="${themeDisplay.getPathThemeImages()}/hepza/icon-phone.png" alt="" srcset="">
								<p class="pl-2">84-28.38290.414 - 38290.405</p>
							</div>
							<div class="d-flex flex-row align-items-center pl-3">
								<img width="16px" height="16px"
									src="${themeDisplay.getPathThemeImages()}/hepza/icon-mail.png" alt="" srcset="">
								<p class="pl-2">hepza@tphcm.gov.vn</p>
							</div>
						</div>
						<div class="d-flex flex-row align-items-center pt-1">
							<img width="16px" height="16px"
								src="${themeDisplay.getPathThemeImages()}/hepza/icon-gps.png" alt="" srcset="">
							<p class="pl-2 ">35 Nguyễn Bỉnh Khiêm,Quận 1,TP-HCM,Việt Nam</p>
						</div>
					</div>

					<div class="autofit-col change-language">
						<@liferay_portlet["runtime"] defaultPreferences="${freeMarkerPortletPreferences}"
							portletProviderAction=portletProviderAction.VIEW
							portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.LanguageEntry" />
					</div>

					<#if !is_signed_in>
						<div class="login-btn">
							<a data-redirect="${is_login_redirect_required?string}" class="login-btn-a"
								href="/web/guest/trang-chu?p_p_id=com_liferay_login_web_portlet_LoginPortlet&p_p_lifecycle=0&p_p_state=maximized&p_p_mode=view&_com_liferay_login_web_portlet_LoginPortlet_mvcRenderCommandName=%2Flogin%2Flogin&saveLastPath=false"
								id="sign-in" rel="nofollow">${sign_in_text}
							</a>
						</div>
						<#else>
							<div class="autofit-col">
								<@liferay.user_personal_bar />
							</div>
					</#if>

				</div>
			</nav>

			<#if has_navigation && is_setup_complete>
				<#include "${full_templates_path}/navigation.ftl" />
			</#if>
		</header>

		<section id="content">
			<h2 class="hide-accessible sr-only" role="heading" aria-level="1">${the_title}</h2>

			<#if selectable>
				<@liferay_util["include"] page=content_include />
				<#else>
					${portletDisplay.recycle()}

					${portletDisplay.setTitle(the_title)}

					<@liferay_theme["wrap-portlet"] page="portlet.ftl">
						<@liferay_util["include"] page=content_include />
						</@>
			</#if>
		</section>

		<footer id="footer" role="contentinfo">
			<div class="background row pl-5 pr-5 pt-2 pb-2">
				<div class="col pt-2">
					<ul class="footer-top d-lg-flex align-items-center pb-3">
						<li><a href="/index">Trang chủ</a></li>
						<li><a href="#">Giới thiệu</a></li>
						<li><a href="#">Tổng quan về TPHCM</a></li>
						<li><a href="#">Liên hệ Sơ đồ website </a></li>
						<li><a href="#">Văn bản pháp quy</a></li>
						<li><a href="#">Thủ tục hành chính công</a></li>
					</ul>
					<div class="row mb-4 align-items-center background-top">
						<img src="${themeDisplay.getPathThemeImages()}/hepza/logo.png" class="pr-4" height="120px"
							alt="" srcset="">
						<div>
							<p>CỔNG THÔNG TIN ĐIỆN TỬ</p>
							<p>BAN QUẢN LÝ KHU CHẾ XUẤT & CÔNG NGHIỆP TP.HCM</p>
							<p>Địa chỉ: 35 Nguyễn Bỉnh Khiêm, Phường Đa Kao, Quận 1, TP.HCM</p>
							<p>Tel. 84-28.38290.414 - 38290.405, FAX: 84-28.38294.271</p>
							<p>Email: hepza@tphcm.gov.vn</p>
							<p>Website: http://www.hepza.gov.vn</p>
						</div>
					</div>
				</div>
				<div class="footer-map col-6 m-3"><iframe style="overflow:hidden;height:100%;width:100%" frameborder="0"
						scrolling="no" marginheight="0" marginwidth="0"
						src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=35%20Nguy%E1%BB%85n%20B%E1%BB%89nh%20Khi%C3%AAm,Qu%E1%BA%ADn%201,TP-HCM+(Khu%20Ch%E1%BA%BF%20Xu%E1%BA%A5t)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"><a
							href="https://www.maps.ie/distance-area-calculator.html"></a></iframe></div>
			</div>
			<div class="background-bottom">
				<p>@ 2022 Bản quyền thuộc về BQL CÁC KHU CHẾ XUẤT VÀ CÔNG NGHIỆP TP.HCM</p>
			</div>
		</footer>
	</div>

	<@liferay_util["include"] page=body_bottom_include />

	<@liferay_util["include"] page=bottom_include />
</body>
</html>