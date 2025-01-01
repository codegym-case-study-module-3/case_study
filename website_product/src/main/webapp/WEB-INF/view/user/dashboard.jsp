<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/1/2025
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Trang chủ</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/plugins/fontawesome/css/all.css">
    <link rel="stylesheet" href="resources/css/main.css">
    <link rel="stylesheet" href="resources/css/styles.css">
  </head>
  <body>
  <div class="section">
    <header class="main-header">
      <div class="main-header--top">
        <div class="container-fluid">
          <div class="row-header">
            <div class="coll-header main-header--left header-action">
              <div class="main-header--logo" itemscope="" itemtype="http://schema.org/Organization">
                <a href="#" itemprop="url">
                  <picture>
                    <source media="(max-width: 1023px)"
                            srcset="https://file.hstatic.net/200000636033/file/logo-mobile_1e5b7fc485b24cf985b3d63cfa1f88be.svg">
                    <source media="(min-width: 1024px)"
                            srcset="https://file.hstatic.net/200000636033/file/logo_fd11946b31524fbe98765f34f3de0628.svg">
                    <img class="img-responsive logoimg ls-is-cached lazyloaded"
                         data-src="https://file.hstatic.net/200000636033/file/logo_fd11946b31524fbe98765f34f3de0628.svg"
                         src="https://file.hstatic.net/200000636033/file/logo_fd11946b31524fbe98765f34f3de0628.svg"
                         alt="GEARVN.COM">
                  </picture>
                </a>
              </div>
            </div>
            <div class="coll-header main-header--right header-action" style="--header-dropdown-mheight: 72.70000457763672px;">
              <div class="header-action-item main-header--search">
                <div class="header-action_dropdown_mb search-box wpo-wrapper-search">
                  <form action="/search"
                        class="searchform-product searchform-categoris ultimate-search"
                        id="searchform-product">
                    <div class="wpo-search-inner">
                      <input type="hidden" name="type" value="product">
                      <input required="" id="inputSearchAuto" class="input-search" name="q"
                             maxlength="40" autocomplete="off" type="text" size="20"
                             placeholder="Bạn cần tìm gì?">
                    </div>
                    <button type="submit" class="btn-search btn" id="btn-search">
                      <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                                d="M10.9999 19C15.4182 19 18.9999 15.4183 18.9999 11C18.9999 6.58172 15.4182 3 10.9999 3C6.5816 3 2.99988 6.58172 2.99988 11C2.99988 15.4183 6.5816 19 10.9999 19Z"
                                stroke="#111111" stroke-width="2" stroke-linecap="round"
                                stroke-linejoin="round"></path>
                        <path d="M20.9999 21L16.6499 16.65" stroke="#111111" stroke-width="2"
                              stroke-linecap="round" stroke-linejoin="round"></path>
                      </svg>
                    </button>
                  </form>
<%--                  <div id="ajaxSearchResults" class="smart-search-wrapper ajaxSearchResults"--%>
<%--                       style="display: none">--%>
<%--                    <div class="resultsContent"></div>--%>
<%--                  </div>--%>
                </div>
              </div>
              <div class="header-action-item main-header--info hide-mb">
                <div class="header-action_text">
                  <a class="header-action__link" href="tel:19005301" aria-label="Hotline" title="Hotline">
                      <span class="box-icon">
                          <svg viewBox="0 0 20 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path d="M4.37476 11.9262H3.24976C2.00711 11.9262 0.999756 12.9386 0.999756 14.1876V17.5797C0.999756 18.8286 2.00711 19.8411 3.24976 19.8411H4.37476C5.6174 19.8411 6.62475 18.8286 6.62475 17.5797V14.1876C6.62475 12.9386 5.6174 11.9262 4.37476 11.9262Z"
                                      stroke="white" stroke-width="2" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                              <path d="M16.7497 11.9264H15.6247C14.3821 11.9264 13.3747 12.9389 13.3747 14.1878V17.5799C13.3747 18.8289 14.3821 19.8413 15.6247 19.8413H16.7497C17.9923 19.8413 18.9997 18.8289 18.9997 17.5799V14.1878C18.9997 12.9389 17.9923 11.9264 16.7497 11.9264Z"
                                      stroke="white" stroke-width="2" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                              <path d="M1 14.1876V10.7955C1 8.39644 1.94821 6.09564 3.63604 4.39925C5.32387 2.70287 7.61305 1.74985 10 1.74985C12.3869 1.74985 14.6761 2.70287 16.364 4.39925C18.0518 6.09564 19 8.39644 19 10.7955V14.1876"
                                      stroke="white" stroke-width="2" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                              <path d="M8.19063 23.9014C5.34558 24.0148 1.68793 22.801 1.86299 19.2078L3.79676 19.2078C3.79676 21.729 5.88816 22.4163 8.19063 22.2935C8.25136 21.9719 8.52587 21.729 8.85602 21.729H11.7511C12.1258 21.729 12.3484 22.2388 12.3484 22.6244V23.5522C12.3484 23.9377 12.0447 24.2502 11.67 24.2502H8.77488C8.5245 24.2502 8.30818 24.1093 8.19063 23.9014Z"
                                      fill="white"></path>
                          </svg>
                      </span>
                    <span class="box-text">
                        <span class="txtnw">Hotline</span>
                        <span class="txtbl">
                          <span class="txt-overflow"><span>##########</span></span>
                        </span>
                    </span>
                  </a>
                </div>
              </div>
              <div class="header-action-item main-header--showroom hide-mb">
                <div class="header-action_text">
                  <a class="header-action__link" href="#"
                     aria-label="hệ thống Showroom" title="hệ thống Showroom">
                        <span class="box-icon">
                            <svg width="18" height="24" viewBox="0 0 18 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M9.00012 12.211C9.61888 12.211 10.1488 11.9904 10.5898 11.5491C11.03 11.1086 11.2502 10.5788 11.2502 9.95968C11.2502 9.34056 11.03 8.81037 10.5898 8.36911C10.1488 7.9286 9.61888 7.70835 9.00012 7.70835C8.38136 7.70835 7.85186 7.9286 7.4116 8.36911C6.97059 8.81037 6.75009 9.34056 6.75009 9.95968C6.75009 10.5788 6.97059 11.1086 7.4116 11.5491C7.85186 11.9904 8.38136 12.211 9.00012 12.211ZM9.00012 20.4847C11.2877 18.3834 12.9846 16.4743 14.0908 14.7573C15.1971 13.041 15.7502 11.5169 15.7502 10.1848C15.7502 8.13985 15.0985 6.46523 13.7949 5.16096C12.4922 3.85744 10.8939 3.20568 9.00012 3.20568C7.10635 3.20568 5.5077 3.85744 4.20418 5.16096C2.90141 6.46523 2.25003 8.13985 2.25003 10.1848C2.25003 11.5169 2.80316 13.041 3.90943 14.7573C5.01569 16.4743 6.71259 18.3834 9.00012 20.4847ZM9.00012 23.0456C8.85012 23.0456 8.70012 23.0174 8.55012 22.9611C8.40011 22.9048 8.26886 22.8298 8.15636 22.736C5.41882 20.3158 3.37505 18.0694 2.02503 15.9966C0.675009 13.9232 0 11.9859 0 10.1848C0 7.37065 0.904887 5.12869 2.71466 3.45895C4.52369 1.78922 6.61884 0.954346 9.00012 0.954346C11.3814 0.954346 13.4766 1.78922 15.2856 3.45895C17.0954 5.12869 18.0002 7.37065 18.0002 10.1848C18.0002 11.9859 17.3252 13.9232 15.9752 15.9966C14.6252 18.0694 12.5814 20.3158 9.84388 22.736C9.73138 22.8298 9.60013 22.9048 9.45013 22.9611C9.30013 23.0174 9.15012 23.0456 9.00012 23.0456Z"
                                    fill="white"></path>
                            </svg>
                        </span>
                    <span class="box-text">
                        <span class="txtnw">Hệ thống</span>
                        <span class="txtbl"><span class="txt-overflow"><span>Showroom</span></span></span>
                    </span>
                  </a>
                </div>
              </div>
              <div class="header-action-item main-header--ordertracking hide-mb">
                <div class="header-action_text">
                  <a class="header-action__link js-account" data-box="acc-login-box" href="#" aria-label="Tra cứu đơn hàng" title="Tra cứu đơn hàng">
                        <span class="box-icon">
                            <svg viewBox="0 0 18 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M13.9637 2.95195H10.7919C10.373 1.79337 9.27584 0.954399 7.97918 0.954399C6.68252 0.954399 5.58535 1.79337 5.16643 2.95195H1.99461C0.897441 2.95195 -0.000244141 3.85085 -0.000244141 4.9495L0.0462926 21.0481C0.0462926 22.1467 0.943978 23.0456 2.04115 23.0456H8.13543C7.54533 22.4721 7.32914 22.1792 6.98295 21.4322H1.67845L1.63191 4.58457H3.98947V5.39127C3.98947 6.48992 4.88715 7.38882 5.98432 7.38882H9.97404C11.0712 7.38882 11.9689 6.48992 11.9689 5.39127V4.58457H14.2811V10.4389C14.9893 10.5388 15.3402 10.7486 15.9586 11.0382V4.9495C15.9586 3.85085 15.0609 2.95195 13.9637 2.95195ZM7.97918 5.39127C7.34445 5.39127 6.52838 4.98792 6.52838 3.95073C6.52838 3.37451 6.93641 2.56781 7.97918 2.56781C8.52777 2.56781 9.38465 2.98544 9.38465 3.95073C9.38465 4.91601 8.65794 5.39127 7.97918 5.39127ZM13.0129 13.0579C10.26 13.0579 8.02572 15.2951 8.02572 18.0517C8.02572 20.8084 10.26 23.0456 13.0129 23.0456C15.7658 23.0456 18 20.8084 18 18.0517C18 15.2951 15.7658 13.0579 13.0129 13.0579ZM14.2995 20.0493L12.6538 18.4013C12.5607 18.3085 12.5071 18.1832 12.5042 18.0517V15.5648C12.5042 15.2851 12.7236 15.0654 13.0029 15.0654C13.2822 15.0654 13.5016 15.2851 13.5016 15.5648V17.852L14.9977 19.3501C15.0443 19.3959 15.0814 19.4504 15.1069 19.5106C15.1323 19.5708 15.1456 19.6354 15.1459 19.7007C15.1462 19.7661 15.1336 19.8308 15.1088 19.8913C15.084 19.9517 15.0474 20.0066 15.0013 20.0528C14.9551 20.099 14.9003 20.1356 14.84 20.1605C14.7796 20.1853 14.7149 20.198 14.6497 20.1976C14.5844 20.1973 14.5199 20.184 14.4598 20.1586C14.3997 20.1331 14.3452 20.096 14.2995 20.0493Z"
                                        fill="white"></path>
                            </svg>
                        </span>
                    <span class="box-text">
                        <span class="txtnw">Tra cứu</span>
                        <span class="txtbl"><span class="txt-overflow"><span>đơn hàng</span></span></span>
                    </span>
                  </a>
                </div>
              </div>
              <div class="header-action-item main-header--cart">
                <div class="header-action_text">
                  <a class="header-action__link header-action_clicked" id="site-cart-handle"
                     href="#" aria-label="Giỏ hàng" title="Giỏ hàng">
                        <span class="box-icon">
                            <svg viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M4.22111 3L3.84216 1H1M4.22111 3H19L15.2105 12.0455H5.73689M4.22111 3L5.73689 12.0455M5.73689 12.0455L3.56458 13.293C2.96774 13.923 3.5309 14.9091 4.375 14.9091H9.625H12.25L15.2105 15M15.2105 15C14.708 15 14.2261 15.2107 13.8708 15.5858C13.5154 15.9609 13.3158 16.4696 13.3158 17C13.3158 17.5304 13.5154 18.0391 13.8708 18.4142C14.2261 18.7893 14.708 19 15.2105 19C15.7131 19 16.195 18.7893 16.5503 18.4142C16.9056 18.0391 17.1053 17.5304 17.1053 17C17.1053 16.4696 16.9056 15.9609 16.5503 15.5858C16.195 15.2107 15.7131 15 15.2105 15ZM7.63162 17C7.63162 17.5304 7.432 18.0391 7.07667 18.4142C6.72134 18.7893 6.2394 19 5.73689 19C5.23438 19 4.75245 18.7893 4.39711 18.4142C4.04178 18.0391 3.84216 17.5304 3.84216 17C3.84216 16.4696 4.04178 15.9609 4.39711 15.5858C4.75245 15.2107 5.23438 15 5.73689 15C6.2394 15 6.72134 15.2107 7.07667 15.5858C7.432 15.9609 7.63162 16.4696 7.63162 17Z"
                                    stroke="white" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round"></path>
                            </svg>
                            <span class="count-holder"><span class="count">1</span></span>
                        </span>
                    <span class="box-text">
                        <span class="txtnw">Giỏ</span>
                        <span class="txtbl"><span
                                class="txt-overflow"><span>hàng</span></span></span>
                    </span>
                  </a>
                  <span class="box-triangle">
                      <svg viewBox="0 0 20 9" role="presentation">
                          <path d="M.47108938 9c.2694725-.26871321.57077721-.56867841.90388257-.89986354C3.12384116 6.36134886 5.74788116 3.76338565 9.2467995.30653888c.4145057-.4095171 1.0844277-.40860098 1.4977971.00205122L19.4935156 9H.47108938z"
                                  fill="#ffffff"></path>
                      </svg>
                  </span>
                </div>
                <div class="header-action_dropdown cart-dropdown">
                  <div class="header-dropdown-cover">
                    <div class="line-stt">Thêm vào giỏ hàng thành công</div>
                    <div class="line-item-add"></div>
                    <div class="line-btn"><a href="#">XEM GIỎ HÀNG</a></div>
                  </div>
                </div>
              </div>
              <%-- Đăng nhập--%>
              <div class="header-action-item main-header--account hide-mb">
                <div class="header-action_text">
                  <a class="header-action__link" href="#" rel="nofollow" id="site-account-handle" aria-label="Tài khoản" title="Tài khoản">
                    <span class="box-icon">
                        <svg viewBox="0 0 24 26" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M11.9999 11.9091C10.5412 11.9091 9.14224 11.3344 8.11079 10.3115C7.07934 9.28857 6.49988 7.90118 6.49988 6.45455C6.49988 5.00791 7.07934 3.62052 8.11079 2.5976C9.14224 1.57467 10.5412 1 11.9999 1C13.4586 1 14.8575 1.57467 15.889 2.5976C16.9204 3.62052 17.4999 5.00791 17.4999 6.45455C17.4999 7.90118 16.9204 9.28857 15.889 10.3115C14.8575 11.3344 13.4586 11.9091 11.9999 11.9091Z"
                                    stroke="white" stroke-width="2" stroke-linecap="round"></path>
                            <path d="M0.999878 25.0001V23.5975C0.999878 20.7923 4.49988 15.1819 11.9999 15.1819C19.4999 15.1819 22.9999 20.7923 22.9999 23.5975V25.0001"
                                    stroke="white" stroke-width="2" stroke-linecap="round"></path>
                        </svg>
                        <span class="box-icon--close">
                            <svg viewBox="0 0 19 19" role="presentation">
                                <path d="M9.1923882 8.39339828l7.7781745-7.7781746 1.4142136 1.41421357-7.7781746 7.77817459 7.7781746 7.77817456L16.9705627 19l-7.7781745-7.7781746L1.41421356 19 0 17.5857864l7.7781746-7.77817456L0 2.02943725 1.41421356.61522369 9.1923882 8.39339828z"
                                        fill-rule="evenodd"></path>
                            </svg>
                        </span>
                    </span>
                    <span class="box-text">
                        <span class="txtnw">Đăng</span>
                        <span class="txtbl">nhập</span>

<%--                        <span class="txtnw">Xin chào</span>--%>
<%--                        <span class="txtbl">tên user</span>--%>
                    </span>
                  </a>

                  <span class="box-triangle">
                      <svg viewBox="0 0 20 9" role="presentation">
                          <path d="M.47108938 9c.2694725-.26871321.57077721-.56867841.90388257-.89986354C3.12384116 6.36134886 5.74788116 3.76338565 9.2467995.30653888c.4145057-.4095171 1.0844277-.40860098 1.4977971.00205122L19.4935156 9H.47108938z"
                                  fill="#ffffff"></path>
                      </svg>
                  </span>
                </div>
                <div class="header-action_dropdown account-dropdown">
                  <div class="header-dropdown-cover not-logged-account-dropdown">
                    <div class="greeting block--1">
                      <div class="thing">
                        <div class="thing-img">
                          <svg width="24" height="23" viewBox="0 0 24 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <g clip-path="url(#clip0_102:3778)">
                              <path d="M3.73909 2.42375L3.62936 2.8938C3.09762 5.15004 2.22365 7.41897 1.02676 9.63384C0.151328 11.2668 -0.175951 13.1255 0.0909153 14.9487C0.400975 17.0265 1.47017 18.9262 3.10282 20.3001C4.73546 21.6741 6.82234 22.4303 8.98149 22.4305H8.98777C10.169 22.4329 11.339 22.2072 12.4298 21.7666C13.5207 21.3259 14.5107 20.6791 15.3425 19.8635L17.1919 18.0604L22.9027 12.5275C23.1619 12.2758 23.3531 11.9658 23.4594 11.625C23.5657 11.2842 23.5838 10.9231 23.5121 10.5739C23.4403 10.2246 23.281 9.89804 23.0482 9.62309C22.8154 9.34815 22.5163 9.13338 22.1776 8.99786L21.9079 8.89069L23.1062 7.72779C23.3136 7.52718 23.4782 7.28876 23.5907 7.02619C23.7031 6.76361 23.7612 6.48205 23.7615 6.19762C23.7619 5.91319 23.7045 5.63148 23.5928 5.36864C23.481 5.1058 23.317 4.86699 23.1101 4.66589L23.0845 4.64097C22.772 4.33651 22.3727 4.13019 21.9384 4.04871L21.7527 4.0144L21.7885 3.83014C21.8143 3.69732 21.8274 3.56247 21.8277 3.4273C21.8282 3.14265 21.7706 2.86073 21.6582 2.59791C21.5457 2.33509 21.3807 2.09662 21.1727 1.89635L21.1408 1.86533C20.7932 1.52722 20.3402 1.31066 19.8526 1.24951C19.365 1.18836 18.8703 1.28607 18.4458 1.52736L18.2467 1.64065L18.1689 1.42912C18.0577 1.13684 17.8826 0.871558 17.6555 0.651661L17.6342 0.630038C17.2172 0.224597 16.6517 -0.00317383 16.062 -0.00317383C15.4723 -0.00317383 14.9068 0.224597 14.4898 0.630038L7.54388 7.38653L8.50776 3.51426C8.58622 3.20813 8.60136 2.88988 8.55231 2.57801C8.50325 2.26614 8.39097 1.96685 8.22199 1.69751C8.05301 1.42818 7.8307 1.19417 7.56795 1.00906C7.3052 0.823961 7.00726 0.691452 6.69142 0.619232C6.37558 0.547012 6.04813 0.536518 5.72808 0.58836C5.40804 0.640203 5.10177 0.753348 4.82706 0.921228C4.55235 1.08911 4.31467 1.30838 4.12782 1.56631C3.94097 1.82424 3.80867 2.11569 3.7386 2.42375H3.73909ZM5.48172 1.79999C5.64955 1.70979 5.83543 1.65592 6.02665 1.64204C6.21788 1.62817 6.40992 1.65463 6.58966 1.71961C6.9019 1.82981 7.16136 2.04815 7.31834 2.33281C7.47533 2.61747 7.5188 2.94843 7.44043 3.26232L6.01442 8.98846C5.94626 9.22349 6.09708 9.45851 6.28077 9.57038C6.3818 9.63055 6.64766 9.74195 6.94157 9.48295L15.2666 1.38776C15.3708 1.28587 15.4948 1.20511 15.6314 1.15017C15.768 1.09522 15.9144 1.06717 16.0622 1.06765C16.2098 1.0672 16.356 1.09517 16.4924 1.14995C16.6288 1.20473 16.7527 1.28523 16.8569 1.38682L16.8777 1.4075C17.0885 1.61275 17.2068 1.89093 17.2068 2.18097C17.2068 2.471 17.0885 2.74918 16.8777 2.95443L11.76 7.93085C11.661 8.03182 11.6065 8.16644 11.6082 8.30596C11.6098 8.44548 11.6676 8.57883 11.769 8.67752C11.8704 8.77621 12.0075 8.83242 12.151 8.83413C12.2945 8.83585 12.433 8.78293 12.5368 8.68669L18.7726 2.62305C18.877 2.52142 19.001 2.44079 19.1375 2.38578C19.274 2.33077 19.4203 2.30246 19.568 2.30246C19.7158 2.30246 19.8621 2.33077 19.9986 2.38578C20.1351 2.44079 20.259 2.52142 20.3635 2.62305L20.3992 2.65125C20.5039 2.75292 20.5869 2.87364 20.6435 3.00652C20.7001 3.1394 20.7293 3.28182 20.7293 3.42566C20.7293 3.5695 20.7001 3.71192 20.6435 3.8448C20.5869 3.97768 20.5039 4.0984 20.3992 4.20007L18.7267 5.81986C17.1823 7.31556 15.4802 8.96355 14.1465 10.2562C14.0917 10.3047 14.0476 10.3635 14.0168 10.4291C13.9859 10.4947 13.9691 10.5656 13.9673 10.6377C13.9654 10.7098 13.9786 10.7815 14.006 10.8484C14.0334 10.9154 14.0745 10.9763 14.1267 11.0274C14.179 11.0786 14.2413 11.1189 14.31 11.146C14.3788 11.173 14.4524 11.1863 14.5265 11.1849C14.6006 11.1836 14.6737 11.1676 14.7413 11.1381C14.809 11.1085 14.8697 11.066 14.92 11.013L14.9238 11.0092C16.1662 9.80588 19.5369 6.54091 20.7212 5.3954C20.9324 5.19126 21.2181 5.07668 21.5159 5.07668C21.8137 5.07668 22.0994 5.19126 22.3106 5.3954L22.3362 5.42032C22.4413 5.52196 22.5247 5.64281 22.5816 5.77591C22.6386 5.90902 22.6679 6.05175 22.6679 6.1959C22.6679 6.34005 22.6386 6.48278 22.5816 6.61588C22.5247 6.74898 22.4413 6.86983 22.3362 6.97148L21.5662 7.71745C19.7858 9.43877 17.4278 11.7232 15.8752 13.2274C15.7722 13.3276 15.7144 13.4634 15.7144 13.6051C15.7144 13.7467 15.7722 13.8825 15.8752 13.9827C15.9261 14.0324 15.9867 14.0718 16.0533 14.0987C16.12 14.1256 16.1914 14.1394 16.2636 14.1394C16.3357 14.1394 16.4072 14.1256 16.4738 14.0987C16.5405 14.0718 16.601 14.0324 16.652 13.9827L20.0575 10.6835L20.5409 10.2172C20.7525 10.0144 21.038 9.90098 21.3352 9.90168C21.6323 9.90239 21.9172 10.0171 22.1279 10.2209C22.3388 10.4263 22.4572 10.7046 22.4572 10.9949C22.4572 11.2851 22.3388 11.5635 22.1279 11.7688L16.4151 17.3051L14.5647 19.1091C13.8347 19.8249 12.9658 20.3927 12.0083 20.7794C11.0509 21.1662 10.024 21.3642 8.98729 21.3621H8.98149C7.08659 21.3618 5.25514 20.698 3.82228 19.4923C2.38941 18.2865 1.45093 16.6194 1.17855 14.7959C0.943867 13.1952 1.23127 11.5633 2.00032 10.1297C3.24167 7.83261 4.15045 5.47625 4.70152 3.13023L4.81125 2.66018C4.85293 2.4784 4.93439 2.30747 5.05008 2.15904C5.16578 2.01061 5.313 1.88815 5.48172 1.79999Z"
                                      fill="black"></path>
                              <path d="M21.9702 17.1911C21.9299 17.0929 21.8606 17.0086 21.7709 16.9487C21.6813 16.8889 21.5754 16.8563 21.4667 16.855C21.358 16.8538 21.2513 16.8839 21.1602 16.9417C21.0692 16.9994 20.9978 17.0821 20.9551 17.1794C20.6669 17.8309 20.2407 18.416 19.7043 18.8965C19.1679 19.377 18.5333 19.7422 17.842 19.9682C17.7735 19.9904 17.7101 20.0255 17.6555 20.0715C17.6009 20.1175 17.5561 20.1735 17.5238 20.2364C17.4914 20.2992 17.4721 20.3676 17.467 20.4377C17.4618 20.5078 17.4709 20.5781 17.4937 20.6448C17.5166 20.7115 17.5527 20.7731 17.6 20.8262C17.6473 20.8793 17.7049 20.9228 17.7695 20.9543C17.8341 20.9857 17.9045 21.0045 17.9766 21.0095C18.0486 21.0145 18.121 21.0057 18.1896 20.9835C19.0285 20.7097 19.7985 20.2667 20.4492 19.6835C21.0999 19.1002 21.6165 18.39 21.9654 17.5991C21.9939 17.5348 22.009 17.4656 22.0098 17.3956C22.0106 17.3256 21.9972 17.2561 21.9702 17.1911Z"
                                      fill="black"></path>
                              <path d="M23.6674 17.8925C23.599 17.8641 23.5253 17.8494 23.4509 17.8492C23.3434 17.8495 23.2384 17.8802 23.1487 17.9378C23.0591 17.9953 22.9887 18.0771 22.9462 18.1731C22.559 19.0467 21.9916 19.8337 21.2791 20.4856C20.5666 21.1375 19.7243 21.6403 18.804 21.9631C18.7361 21.9868 18.6737 22.0232 18.6203 22.0704C18.5669 22.1175 18.5235 22.1744 18.4928 22.2378C18.462 22.3012 18.4443 22.3699 18.4408 22.44C18.4373 22.51 18.4481 22.5801 18.4724 22.6461C18.4968 22.7121 18.5342 22.7728 18.5827 22.8248C18.6312 22.8767 18.6897 22.9188 18.7549 22.9488C18.8201 22.9787 18.8908 22.9959 18.9628 22.9993C19.0349 23.0027 19.1069 22.9922 19.1748 22.9686C20.2368 22.5961 21.2089 22.0158 22.031 21.2634C22.853 20.511 23.5076 19.6025 23.9541 18.5943C24.0114 18.4642 24.0134 18.3174 23.9597 18.1859C23.906 18.0544 23.8009 17.9489 23.6674 17.8925Z"
                                      fill="black"></path>
                            </g>
                            <defs>
                              <clipPath id="clip0_102:3778">
                                <rect width="24" height="23" fill="white"></rect>
                              </clipPath>
                            </defs>
                          </svg>
                        </div>
                        <div class="d-flex flex-column">
<%--                          <div class="thing-name">Xin chào, vui lòng đăng nhập</div>--%>
                          <div class="thing-name">Xin chào, hoàng null</div>
                        </div>
                      </div>
                      <div class="actions">
                        <button class="js-account" data-box="acc-login-box">ĐĂNG NHẬP</button>
                        <button class="js-account" data-box="acc-register-box">ĐĂNG KÝ</button>
                      </div>
                    </div>
                    <%-- Đã đăng nhập --%>
<%--                    <div class="block block--4">--%>
<%--                      <ul>--%>
<%--                        <li>--%>
<%--                          <a href="#" class="thing js-btn-logout">--%>
<%--                            <div class="thing-img">--%>
<%--                              <svg width="21" height="21"viewBox="0 0 21 21" fill="none"xmlns="http://www.w3.org/2000/svg">--%>
<%--                                <g>--%>
<%--                                  <path d="M20.343 9.84414H12.0307C11.6685 9.84414 11.3745 9.55015 11.3745 9.18791C11.3745 8.82567 11.6685 8.53168 12.0307 8.53168H20.343C20.7053 8.53168 20.9993 8.82567 20.9993 9.18791C20.9993 9.55015 20.7053 9.84414 20.343 9.84414Z"--%>
<%--                                          fill="black"></path>--%>
<%--                                  <path d="M17.0618 13.1252C16.8938 13.1252 16.7259 13.0613 16.598 12.9328C16.3417 12.6763 16.3417 12.2607 16.598 12.0044L19.4155 9.18704L16.598 6.36955C16.3417 6.11321 16.3417 5.69762 16.598 5.44128C16.8545 5.18478 17.2701 5.18478 17.5264 5.44128L20.8076 8.72242C21.0639 8.97876 21.0639 9.39435 20.8076 9.65069L17.5264 12.9318C17.3978 13.0613 17.2299 13.1252 17.0618 13.1252Z"--%>
<%--                                          fill="black"></path>--%>
<%--                                  <path d="M6.99983 21.0006C6.81255 21.0006 6.63487 20.9743 6.45736 20.9192L1.19166 19.1649C0.47519 18.9147 0 18.2471 0 17.5008V1.75128C0 0.786162 0.78488 0.00128174 1.75 0.00128174C1.93713 0.00128174 2.1148 0.0275566 2.29248 0.0826696L7.55801 1.83699C8.27464 2.08725 8.74967 2.75485 8.74967 3.50112V19.2506C8.74967 20.2157 7.96495 21.0006 6.99983 21.0006ZM1.75 1.31374C1.50936 1.31374 1.31246 1.51064 1.31246 1.75128V17.5008C1.31246 17.6871 1.43758 17.8603 1.61606 17.9225L6.85709 19.6689C6.89474 19.6811 6.94376 19.6882 6.99983 19.6882C7.24047 19.6882 7.43721 19.4913 7.43721 19.2506V3.50112C7.43721 3.31479 7.31209 3.1416 7.13361 3.07944L1.89259 1.33297C1.85494 1.32079 1.80591 1.31374 1.75 1.31374Z"--%>
<%--                                          fill="black"></path>--%>
<%--                                  <path d="M13.3433 7.00051C12.981 7.00051 12.687 6.70652 12.687 6.34428V2.4069C12.687 1.80402 12.1963 1.31313 11.5934 1.31313H1.74998C1.38774 1.31313 1.09375 1.01914 1.09375 0.656901C1.09375 0.294661 1.38774 0.000671387 1.74998 0.000671387H11.5934C12.9208 0.000671387 13.9995 1.07954 13.9995 2.4069V6.34428C13.9995 6.70652 13.7055 7.00051 13.3433 7.00051Z"--%>
<%--                                          fill="black"></path>--%>
<%--                                  <path d="M11.5935 18.3751H8.09349C7.73125 18.3751 7.43726 18.0811 7.43726 17.7188C7.43726 17.3566 7.73125 17.0626 8.09349 17.0626H11.5935C12.1964 17.0626 12.6871 16.5717 12.6871 15.9688V12.0315C12.6871 11.6692 12.9811 11.3752 13.3433 11.3752C13.7056 11.3752 13.9996 11.6692 13.9996 12.0315V15.9688C13.9996 17.2962 12.9208 18.3751 11.5935 18.3751Z"--%>
<%--                                          fill="black"></path>--%>
<%--                                </g>--%>
<%--                              </svg>--%>
<%--                            </div>--%>
<%--                            <div class="d-flex flex-column">--%>
<%--                              <div class="thing-name">Đăng xuất</div>--%>
<%--                            </div>--%>
<%--                          </a>--%>
<%--                        </li>--%>
<%--                      </ul>--%>
<%--                    </div>--%>
                    <%-- --%>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <div class="container">
      <div class="container-fluid">

      </div>
    </div>
    <footer class="main-footer">
      <div class="main-footer--top">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-2 col-lg">
              <div class="footer-col footer-link toggle-footer toggle-first">
                <div class="footer-title">
                  <h4>Về cửa hàng </h4>
                  <span class="icon-title"></span>
                </div>
                <div class="footer-content">
                  <ul>
                    <li class="item"><a href="#" title="Giới thiệu">Giới
                      thiệu</a></li>
                    <li class="item"><a href="#"
                                        title="Tuyển dụng">Tuyển
                      dụng</a></li>

                  </ul>
                </div>
              </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-2 col-lg">
              <div class="footer-col footer-link toggle-footer">
                <div class="footer-title">
                  <h4>Chính sách </h4>
                  <span class="icon-title"></span>
                </div>
                <div class="footer-content">
                  <ul>
                    <li class="item"><a href="#"
                                        title="Chính sách bảo hành">Chính sách bảo hành</a></li>
                    <li class="item"><a href="#"
                                        title="Chính sách giao hàng">Chính sách giao hàng</a></li>
                    <li class="item"><a href="#"
                                        title="Chính sách bảo mật">Chính sách bảo mật</a></li>

                  </ul>
                </div>
              </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-2 col-lg">
              <div class="footer-col footer-link toggle-footer">
                <div class="footer-title">
                  <h4>Thông tin </h4>
                  <span class="icon-title"></span>
                </div>
                <div class="footer-content">
                  <ul>
                    <li class="item"><a href="#"
                                        title="Hệ thống cửa hàng">Hệ thống cửa hàng</a></li>
                    <li class="item"><a href="#"
                                        title="Hướng dẫn mua hàng">Hướng dẫn mua hàng</a></li>
                    <li class="item"><a href="#"
                                        title="Hướng dẫn thanh toán">Hướng dẫn thanh toán</a></li>
                    <li class="item"><a href="#"
                                        title="Hướng dẫn trả góp">Hướng
                      dẫn trả góp</a></li>
                    <li class="item"><a
                            href="#"
                            title="Tra cứu địa chỉ bảo hành">Tra cứu địa chỉ bảo hành</a></li>
                    <li class="item"><a href="#"
                                        title="Dịch vụ vệ sinh miễn phí">Dịch vụ vệ sinh miễn phí</a></li>

                  </ul>
                </div>
              </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-3 col-lg">
              <div class="footer-col footer-block toggle-footer">
                <div class="footer-title">
                  <h4>TỔNG ĐÀI HỖ TRỢ <span>(8:00 - 21:00)</span></h4>
                </div>
                <div class="footer-content">
                  <div class="list-info">
                    <p>
                      <span>Mua hàng:</span> <a href="#">1900.5301 <span> </span> </a>
                    </p>
                    <p>
                      <span>Bảo hành: </span>
                      <a href="#">1900.5325 <span> </span></a>
                      <br>
                    </p>
                    <p>
                      <span>Khiếu nại: </span>
                      <a href="#">1800.6173 <span> </span></a>
                      <br>
                      <span>Email: </span> <a href="#">cskh@gearvn.com</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-3 col-lg">
              <div class="footer-col footer-block toggle-footer">
                <div class="footer-title">
                  <h4>Đơn vị vận chuyển</h4>
                </div>
                <div class="footer-content">
                  <ul class="list-ship">
                    <li><img data-sizes="auto" class="lazyautosizes lazyloaded"
                             src="resources/img/img1.png"
                             data-src="resources/img/img1.png"
                             alt="Hình thức vận chuyển 1" sizes="59px"></li>
                    <li><img data-sizes="auto" class="lazyautosizes lazyloaded"
                             src="resources/img/img2.png"
                             data-src="resources/img/img2.png"
                             alt="Hình thức vận chuyển 2" sizes="59px"></li>
                    <li><img data-sizes="auto" class="lazyautosizes lazyloaded"
                             src="resources/img/img3.png"
                             data-src="resources/img/img3.png"
                             alt="Hình thức vận chuyển 3" sizes="59px"></li>
                    <li><img data-sizes="auto" class="lazyautosizes lazyloaded"
                             src="resources/img/img4.png"
                             data-src="resources/img/img4.png"
                             alt="Hình thức vận chuyển 4" sizes="59px"></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="main-footer--copyright">
        <div class="container-fluid">
          <div class="line">
            <div class="d-flex align-items-lg-center flex-lg-nowrap flex-wrap">
              <h4 class="footer-title">Kết nối với chúng tôi</h4>
              <div class="footer-content d-flex align-items-center justify-content-lg-between">
                <div class="social-list">
                  <a href="#" target="_blank" rel="nofollow">
                    <img data-sizes="auto" class="lazyautosizes lazyloaded"
                         src="https://file.hstatic.net/200000636033/file/facebook_1_0e31d70174824ea184c759534430deec.png"
                         data-src="https://file.hstatic.net/200000636033/file/facebook_1_0e31d70174824ea184c759534430deec.png"
                         alt="Gearvn" sizes="220px">
                  </a>
                  <a href="#" target="_blank" rel="nofollow">
                    <img data-sizes="auto" class="lazyautosizes lazyloaded"
                         src="https://file.hstatic.net/200000722513/file/tiktok-logo_fe1e020f470a4d679064cec31bc676e4.png"
                         data-src="https://file.hstatic.net/200000722513/file/tiktok-logo_fe1e020f470a4d679064cec31bc676e4.png"
                         alt="Gearvn" sizes="220px">
                  </a>
                  <a href="#" target="_blank" rel="nofollow">
                    <img data-sizes="auto" class="lazyautosizes lazyloaded"
                         src="https://file.hstatic.net/200000636033/file/youtube_1_d8de1f41ca614424aca55aa0c2791684.png"
                         data-src="https://file.hstatic.net/200000636033/file/youtube_1_d8de1f41ca614424aca55aa0c2791684.png"
                         alt="Gearvn" sizes="220px">
                  </a>
                  <a href="#" target="_blank" rel="nofollow">
                    <img data-sizes="auto" class="lazyautosizes ls-is-cached lazyloaded"
                         src="https://file.hstatic.net/200000722513/file/icon_zalo__1__f5d6f273786c4db4a3157f494019ab1e.png"
                         data-src="https://file.hstatic.net/200000722513/file/icon_zalo__1__f5d6f273786c4db4a3157f494019ab1e.png"
                         alt="Gearvn" sizes="220px">
                  </a>
                  <a href="#" target="_blank"
                     rel="nofollow">
                    <img data-sizes="auto" class="lazyautosizes lazyloaded"
                         src="https://file.hstatic.net/200000636033/file/group_1_54d23abd89b74ead806840aa9458661d.png"
                         data-src="https://file.hstatic.net/200000636033/file/group_1_54d23abd89b74ead806840aa9458661d.png"
                         alt="Gearvn" sizes="220px">
                  </a>
                </div>
                <div class="logo-footer">
                  <a rel="nofollow" target="_blank" href="#">
                    <img src="//theme.hstatic.net/200000722513/1001090675/14/logo-bct.png?v=7047"
                         data-src="//theme.hstatic.net/200000722513/1001090675/14/logo-bct.png?v=7047"
                         class=" lazyloaded" alt="Bộ Công Thương">
                  </a>
                </div>
              </div>
            </div>
            <p class="d-none">Copyright © 2024 <a href="#"><strong>Công ty TNHH Thương Mại
              Gearvn</strong></a>. <a href="#"
                                      rel="nofollow">Powered by Haravan Enterprise</a></p>
          </div>
        </div>
      </div>
    </footer>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
          crossorigin="anonymous"></script>
  </body>
</html>
