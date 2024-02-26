<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Register - Online Courses & Education Bootstrap5 Template</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/assets/images/favicon.png" />

    <!-- CSS
        ============================================ -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/vendor/bootstrap.min.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/vendor/slick.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/vendor/slick-theme.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/sal.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/feather.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/fontawesome.min.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/euclid-circulara.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/swiper.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/magnify.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/odometer.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/animation.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/bootstrap-select.min.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/jquery-ui.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/magnigy-popup.min.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/plyr.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/style.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/style_add.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/joy/register.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/mok/mok_opinion.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/register-verify.css" />
    <style>
      .hidden {
        display: none;
      }
    </style>

    <!-- Eugen追加 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  </head>

  <body class="rbt-header-sticky">
    <!-- Start Header Area  頁首 桌機-->
    <header class="rbt-header rbt-header-10">
      <div class="rbt-sticky-placeholder"></div>
      <div class="rbt-header-wrapper header-space-betwween header-transparent header-sticky">
        <div class="container-fluid">
          <div class="mainbar-row rbt-navigation-start align-items-center">
            <div class="header-left rbt-header-content">
              <div class="header-info">
                <div class="logo">
                  <a href="index.html">
                    <img src="<%= request.getContextPath() %>/assets/images/logo/fitanywherelogo.png"
                      alt="Education Logo Images" />
                  </a>
                </div>
              </div>
            </div>
            <div class="rbt-main-navigation d-none d-xl-block">
              <nav class="mainmenu-nav">
                <ul class="mainmenu">
                  <li class="with-megamenu has-menu-child-item position-static mainmenu-sub not-hamber">
                    <a href="#">TDEE / FFMI計算公式</a>
                  </li>

                  <li class="with-megamenu has-menu-child-item mainmenu-sub not-hamber">
                    <a href="./g2-blog-list.html">討論區</a>
                  </li>

                  <li class="has-dropdown has-menu-child-item mainmenu-sub not-hamber">
                    <a href="./student-dashboard.html">會員中心</a>
                  </li>

                  <li class="with-megamenu has-menu-child-item position-static mainmenu-sub not-hamber">
                    <a href="./g2-02-course-school.html">線上課程<i class="feather-chevron-down"></i></a>
                  </li>

                  <li class="not-hamber">
                    <a href=""><img src="./<%= request.getContextPath() %>/assets/images/bell.png" alt="" /></a>
                  </li>
                  <li class="not-hamber">
                    <a href="./g2-cart.html"><img src="./<%= request.getContextPath() %>/assets/images/cart.png"
                        alt="" /></a>
                  </li>
                  <li class="not-hamber">
                    <a href="" class="button_model feed_back">
                      <img src="./<%= request.getContextPath() %>/assets/images/mail.png" alt="" />
                    </a>
                    <div id="lightbox" class="none">
                      <form action="">
                        <article>
                          <div class="article-inner-wrapper">
                            <h1>意見回饋</h1>
                            <div class="feed-back-row1">
                              <p>暱稱</p>
                              <input type="text" placeholder="哈哈哈" value="" disabled />
                            </div>
                            <div class="feed-back-row2">
                              <p>帳號</p>
                              <input type="text" placeholder="jay6666666@gmail.com" value="" disabled />
                            </div>
                            <div class="feed-back-row3">
                              <p>意見回饋</p>
                              <input type="textarea" class="feedback" />
                            </div>
                            <div class="feed-back-button">
                              <button type="button" class="confirm">
                                確認
                              </button>
                              <button type="button" class="btn_model_close">
                                取消
                              </button>
                            </div>
                          </div>
                        </article>
                      </form>
                    </div>
                  </li>
                  <li class="with-megamenu has-menu-child-item position-static mainmenu-sub not-hamber">
                    <a href="./g2-register.html">登入 / 註冊</a>
                  </li>
                  <li class="hamber">
                    <div class="hamberger">
                      <button class="hamberger-button rbt-round-btn">
                        <i class="feather-menu"></i>
                      </button>
                    </div>
                  </li>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- End Header Area  -->

    <!-- Start Side Vav -->
    <div class="rbt-cart-side-menu">
      <div class="inner-wrapper">
        <div class="inner-top">
          <div class="content">
            <div class="title">
              <h4 class="title mb--0">Your shopping cart</h4>
            </div>
            <div class="rbt-btn-close" id="btn_sideNavClose">
              <button class="minicart-close-button rbt-round-btn">
                <i class="feather-x"></i>
              </button>
            </div>
          </div>
        </div>
        <nav class="side-nav w-100">
          <ul class="rbt-minicart-wrapper">
            <li class="minicart-item">
              <div class="thumbnail">
                <a href="#">
                  <img src="<%= request.getContextPath() %>/assets/images/product/1.jpg" alt="Product Images" />
                </a>
              </div>
              <div class="product-content">
                <h6 class="title">
                  <a href="single-product.html">Miracle Morning</a>
                </h6>

                <span class="quantity">1 * <span class="price">$22</span></span>
              </div>
              <div class="close-btn">
                <button class="rbt-round-btn"><i class="feather-x"></i></button>
              </div>
            </li>

            <li class="minicart-item">
              <div class="thumbnail">
                <a href="#">
                  <img src="<%= request.getContextPath() %>/assets/images/product/7.jpg" alt="Product Images" />
                </a>
              </div>
              <div class="product-content">
                <h6 class="title">
                  <a href="single-product.html">Happy Strong</a>
                </h6>

                <span class="quantity">1 * <span class="price">$30</span></span>
              </div>
              <div class="close-btn">
                <button class="rbt-round-btn"><i class="feather-x"></i></button>
              </div>
            </li>

            <li class="minicart-item">
              <div class="thumbnail">
                <a href="#">
                  <img src="<%= request.getContextPath() %>/assets/images/product/3.jpg" alt="Product Images" />
                </a>
              </div>
              <div class="product-content">
                <h6 class="title">
                  <a href="single-product.html">Rich Dad Poor Dad</a>
                </h6>

                <span class="quantity">1 * <span class="price">$50</span></span>
              </div>
              <div class="close-btn">
                <button class="rbt-round-btn"><i class="feather-x"></i></button>
              </div>
            </li>

            <li class="minicart-item">
              <div class="thumbnail">
                <a href="#">
                  <img src="<%= request.getContextPath() %>/assets/images/product/4.jpg" alt="Product Images" />
                </a>
              </div>
              <div class="product-content">
                <h6 class="title">
                  <a href="single-product.html">Momentum Theorem</a>
                </h6>

                <span class="quantity">1 * <span class="price">$50</span></span>
              </div>
              <div class="close-btn">
                <button class="rbt-round-btn"><i class="feather-x"></i></button>
              </div>
            </li>
          </ul>
        </nav>

        <div class="rbt-minicart-footer">
          <hr class="mb--0" />
          <div class="rbt-cart-subttotal">
            <p class="subtotal"><strong>Subtotal:</strong></p>
            <p class="price">$121</p>
          </div>
          <hr class="mb--0" />
          <div class="rbt-minicart-bottom mt--20">
            <div class="view-cart-btn">
              <a class="rbt-btn btn-border icon-hover w-100 text-center" href="#">
                <span class="btn-text">View Cart</span>
                <span class="btn-icon"><i class="feather-arrow-right"></i></span>
              </a>
            </div>
            <div class="checkout-btn mt--20">
              <a class="rbt-btn btn-gradient icon-hover w-100 text-center" href="#">
                <span class="btn-text">Checkout</span>
                <span class="btn-icon"><i class="feather-arrow-right"></i></span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- End Side Vav -->
    <a class="close_side_menu" href="javascript:void(0);"></a>

    <!-- Start breadcrumb Area -->
    <div class="rbt-breadcrumb-default ptb--100 ptb_md--50 ptb_sm--30 bg-gradient-1">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="breadcrumb-inner text-center">
              <h2 class="title">註冊</h2>
              <ul class="page-list">
                <li class="rbt-breadcrumb-item">
                  <a href="index.html">首頁</a>
                </li>
                <li>
                  <div class="icon-right">
                    <i class="feather-chevron-right"></i>
                  </div>
                </li>
                <li class="rbt-breadcrumb-item active">註冊</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Breadcrumb Area -->

    <div id="lightbox-verify" class="hidden">
      <form id="verificationForm" action="" method="post">
        <article>
          <div class="article-inner-wrapper">
            <h2>驗證碼已寄到您的註冊信箱</h2>
            <h4>(請在15分鐘內輸入驗證碼)</h4>
            <div>
              <div class="verificationCodeBox article-inner-wrapper-number-input">
                <input type="text" id="verificationCode1" maxlength="1" />
                <input type="text" id="verificationCode2" maxlength="1" />
                <input type="text" id="verificationCode3" maxlength="1" />
                <input type="text" id="verificationCode4" maxlength="1" />
                <input type="text" id="verificationCode5" maxlength="1" />
                <input type="text" id="verificationCode6" maxlength="1" />
              </div>
              <!-- 新增核對驗證碼按鈕 -->
              <p></p>
              <button type="button" id="checkVerificationCode">
                核對驗證碼
              </button>
              <h4></h4>
            </div>

            <div class="article-inner-wrapper-verify-mistake">
              <p>如未收到信件請使用下方按鈕重新發送驗證信</p>
              <div class="resend">
                <!-- 更新寄送鏈接為按鈕動作 -->
                <button type="button" id="resendVerificationCode">重新寄送驗證信</button>
              </div>
            </div>
          </div>
        </article>
      </form>
    </div>

    <div class="rbt-elements-area bg-color-white rbt-section-gap">
      <div class="container">
        <div class="row gy-5 row--30">
          <div class="col-lg-6">
            <div class="rbt-contact-form contact-form-style-1 max-width-auto">
              <h3 class="title">註冊</h3>
              <form class="registerForm max-width-auto" method="post"
                action="<%= request.getContextPath() %>/user_controller">
                <input type="hidden" name="requestType" value="registerForm" />

                <div class="form-group">
                  <label for="u_name">請輸入中英文姓名</label>
                  <input id="u_name" name="u_name" type="text" />
                  <span class="focus-border"></span>
                </div>

                <div class="register_name_gender">
                  <!-- 性別選單 -->
                  <div class="rbt-modern-select bg-transparent height-45">
                    <label for="u_gender">請選擇性別</label>
                    <select id="u_gender" name="u_gender" class="w-100" required>
                      <option value="" disabled selected>性別</option>
                      <option value="0">男</option>
                      <option value="1">女</option>
                      <option value="2">其他</option>
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <label for="u_nickname">站內暱稱(5~12字內的英文或數字組合)</label>
                  <input id="u_nickname" name="u_nickname" type="text" maxlength="12" required />
                </div>

                <div class="form-group">
                  <label for="u_phone">手機號碼</label>
                  <input id="u_phone" name="u_phone" type="tel" maxlength="10" required />
                </div>

                <div class="form-group">
                  <label for="u_mail">電子信箱</label>
                  <input id="u_mail" name="u_mail" type="email" maxlength="50" required />
                </div>

                <div class="form-group">
                  <label for="u_password">密碼(必須包含英文字母和數字且長度6~12字)</label>
                  <input id="u_password" name="u_password" type="password" required />
                  <span class="focus-border"></span>
                </div>

                <div class="form-group">
                  <label for="u_conpassword">確認密碼</label>
                  <input id="u_conpassword" name="u_conpassword" type="password" required />
                  <span class="focus-border"></span>
                </div>

                <div class="form-group focused">
                  <label for="u_birth">生日</label>
                  <input id="u_birth" name="u_birth" type="date" />
                  <span class="focus-border"></span>
                </div>

                <div class="form-submit-group">
                  <button type="button" id="nextStepButton"
                    class="rbt-btn btn-md btn-gradient hover-icon-reverse w-100 submmit-verify">
                    <span class="icon-reverse-wrapper">
                      <span class="btn-text">下一步 寄送驗證信</span>
                      <span class="btn-icon"><i class="feather-arrow-right"></i></span>
                      <span class="btn-icon"><i class="feather-arrow-right"></i></span>
                    </span>
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Start Footer aera -->
    <div class="copyright-area copyright-style-1 ptb--20 bg-color-darker g2_footer">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-12">
            <p class="rbt-link-hover text-center color-white-off">
              Fit AnyWhere©
            </p>
          </div>
        </div>
      </div>
    </div>
    <!-- End Footer aera -->

    <!-- Start Copyright Area  -->

    <!-- End Copyright Area  -->
    <div class="rbt-progress-parent">
      <svg class="rbt-back-circle svg-inner" width="100%" height="100%" viewBox="-1 -1 102 102">
        <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
      </svg>
    </div>

    <!-- JS
    ============================================ -->
    <!-- Modernizer JS -->
    <script src="<%= request.getContextPath() %>/assets/js/vendor/modernizr.min.js"></script>
    <!-- jQuery JS -->
    <script src="<%= request.getContextPath() %>/assets/js/vendor/jquery.js"></script>
    <!-- Bootstrap JS -->
    <script src="<%= request.getContextPath() %>/assets/js/vendor/bootstrap.min.js"></script>
    <!-- sal.js -->
    <script src="<%= request.getContextPath() %>/assets/js/vendor/sal.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/swiper.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/magnify.min.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/jquery-appear.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/odometer.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/backtotop.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/isotop.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/imageloaded.js"></script>

    <script src="<%= request.getContextPath() %>/assets/js/vendor/wow.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/waypoint.min.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/easypie.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/text-type.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/jquery-one-page-nav.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/bootstrap-select.min.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/jquery-ui.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/magnify-popup.min.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/paralax-scroll.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/paralax.min.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/countdown.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vendor/plyr.js"></script>
    <!-- Main JS -->
    <script src="<%= request.getContextPath() %>/assets/js/main.js"></script>

    <script src="<%= request.getContextPath() %>/assets/js/mok/mok_opinion.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/register_verify.js"></script>
    <!-- =================================================== -->
    <!-- Eugen -->
    <script>
      document.addEventListener('DOMContentLoaded', function () {
        let checksPassed = {
          u_name: false,
          u_nickname: false,
          u_gender: false,
          u_phone: false,
          u_mail: false,
          u_birth: false,
          u_password: false,
        };

        function updateFieldCheckStatus(fieldName, status) {
          checksPassed[fieldName] = status;
          console.log(fieldName + ' status updated to: ' + status);
          updateNextStepButtonState();
        }

        // function updateNextStepButtonState() {
        //   const allChecksPassed = Object.values(checksPassed).every(status => status);
        //   document.getElementById('nextStepButton').disabled = !allChecksPassed;
        //   console.log('All checks passed: ' + allChecksPassed);
        // }


        // 更新下一步按鈕狀態
        function updateNextStepButtonState() {
          // 檢查是否所有欄位都為true並且noDuplicate的子項目也都為true
          const allChecksPassed = Object.values(checksPassed).every(status => status) && Object.values(noDuplicate).every(status => status);
          // 解鎖/鎖定下一步按鈕
          document.getElementById('nextStepButton').disabled = !allChecksPassed;
          console.log('All checks passed: ' + allChecksPassed);
        }


        function performCheck(field) {
          const value = document.getElementById(field).value.trim();
          let isValid = true;

          if (value === '' && field !== 'u_password' && field !== 'u_conpassword') {
            return; // 如果欄位是空的，不進行檢查
          }

          switch (field) {
            case 'u_name':
              if (/^[\u4e00-\u9fa5]{1,15}$/.test(value)) {
                isValid = true;
              } else if (/^[A-Za-z\s]+$/.test(value) && value === value.trim() && !value.startsWith(' ') && !value.endsWith(' ') && value.replace(/\s+/g, ' ').length <= 30) {
                isValid = true;
              } else {
                isValid = false;
                alert(value.match(/[\u4e00-\u9fa5]/) ? "請輸入15字內的中文姓名且不得有空格!" : "請輸入正確的英文名字，最多30字且頭尾不得為空格!");
              }
              break;
            case 'u_nickname':
              isValid = /^[A-Za-z0-9]{5,12}$/.test(value);
              if (!isValid) alert('請輸入5~12字的英文與數字組合!');
              break;
            case 'u_gender':
              isValid = document.getElementById(field).selectedIndex > 0;
              if (!isValid) alert('請選擇性別!');
              break;
            case 'u_phone':
              isValid = /^\d{10}$/.test(value);
              if (!isValid) alert('請輸入10碼手機號碼!');
              break;
            case 'u_mail':
              isValid = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(value);
              if (!isValid) alert('請輸入正確的電子信箱!');
              break;
            case 'u_birth':
              isValid = checkBirthDate(value);
              if (!isValid) {
                alert('本站僅限年滿18歲成年人註冊!');
                document.getElementById('u_birth').value = '';
              }
              break;
            default:
              break;
          }

          if (field !== 'u_password' && field !== 'u_conpassword') {
            updateFieldCheckStatus(field, isValid);
            if (!isValid) document.getElementById(field).value = ''; // 清空欄位
          }
        }

        function checkBirthDate(birthDateString) {
          const birthDate = new Date(birthDateString);
          const today = new Date();
          let age = today.getFullYear() - birthDate.getFullYear();
          const m = today.getMonth() - birthDate.getMonth();
          if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
            age--;
          }
          return age >= 18;
        }

        function checkPasswords() {
          const password = document.getElementById('u_password').value.trim();
          const confirmPassword = document.getElementById('u_conpassword').value.trim();

          if (password !== '' && confirmPassword !== '' && document.activeElement !== document.getElementById('u_password') && document.activeElement !== document.getElementById('u_conpassword')) {
            let isValid = true;

            if (password !== confirmPassword) {
              isValid = false;
              alert('兩次輸入密碼不一致, 請重新輸入!');
            } else if (!/^[A-Za-z0-9]{6,12}$/.test(password)) {
              isValid = false;
              alert('請輸入6~12位由英文與數字組合而成的密碼!');
            }

            if (!isValid) {
              document.getElementById('u_password').value = '';
              document.getElementById('u_conpassword').value = '';
            }

            updateFieldCheckStatus('u_password', isValid);
          }
        }

        // 綁定事件監聽器
        document.getElementById('u_password').addEventListener('blur', checkPasswords);
        document.getElementById('u_conpassword').addEventListener('blur', checkPasswords);

        // 對於非密碼欄位，綁定 performCheck 進行檢查
        const fields = ['u_name', 'u_nickname', 'u_gender', 'u_phone', 'u_mail', 'u_birth'];
        fields.forEach(field => {
          const element = document.getElementById(field);
          if (element) {
            element.addEventListener('change', () => performCheck(field));
          }
        });

        // 如果欄位是空的，不進行檢查
        fields.forEach(field => {
          const element = document.getElementById(field);
          if (element) {
            element.addEventListener('input', () => {
              if (element.value.trim() === '') {
                updateFieldCheckStatus(field, false);
              }
            });
          }
        });
      });

      // =======================================================

      // 建立結果儲存物件
      let noDuplicate = {
        u_nickname: false,
        u_phone: false,
        u_mail: false,
      };

      // 欄位填寫完成後檢查重複
      function checkDuplicate(fieldId, fieldValue) {
        // 取得欄位值
        let value = fieldValue.trim();
        // 欄位不為空值且游標已離開欄位才執行檢查
        if (value !== "") {
          // 發送AJAX請求
          $.ajax({
            url: "<%= request.getContextPath() %>/user_controller",
            type: "POST",
            data: {
              requestType: "checkDuplicate",
              fieldId: fieldId,
              fieldValue: value,
            },
            success: function (response) {
              // 根據回應處理
              if (response === "true") {
                // 若回傳true，表示重複
                console.log("重複檢查結果: 重複");
                alert("此" + getFieldLabel(fieldId) + "已有人註冊, 請重新輸入或改為登入網站!");
                // 清空對應的欄位
                $("#" + fieldId).val("");
              } else {
                // 若回傳false，表示不重複，將noDuplicate對應的欄位改為true
                console.log("重複檢查結果: 不重複");
                noDuplicate[fieldId] = true;
              }
            },
            error: function (xhr, status, error) {
              // 處理錯誤
              console.error("AJAX請求失敗:", error);
            },
          });
        }
      }

      // 當u_nickname欄位離開時檢查重複
      $("#u_nickname").blur(function () {
        console.log("離開暱稱欄位");
        checkDuplicate("u_nickname", $(this).val());
      });

      // 當u_phone欄位離開時檢查重複
      $("#u_phone").blur(function () {
        console.log("離開手機號碼欄位");
        checkDuplicate("u_phone", $(this).val());
      });

      // 當u_mail欄位離開時檢查重複
      $("#u_mail").blur(function () {
        console.log("離開信箱欄位");
        checkDuplicate("u_mail", $(this).val());
      });

      // 根據欄位ID取得對應的標籤
      function getFieldLabel(fieldId) {
        switch (fieldId) {
          case "u_nickname":
            return "暱稱";
          case "u_phone":
            return "手機號碼";
          case "u_mail":
            return "信箱";
          default:
            return "";
        }
      }


    </script>


    <script>

      // 處理註冊表單在按下"寄送驗證碼"後會送往後端儲存在session並顯示彈窗
      document
        .getElementById("nextStepButton")
        .addEventListener("click", function () {
          var formElement = document.querySelector(".registerForm");
          var formData = new FormData(formElement);
          var urlEncodedData = "";
          var urlEncodedDataPairs = [];

          // 將FormData轉換為URL編碼字符串
          formData.append("requestType", "registerForm");
          for (var pair of formData.entries()) {
            urlEncodedDataPairs.push(
              encodeURIComponent(pair[0]) + "=" + encodeURIComponent(pair[1])
            );
          }
          urlEncodedData = urlEncodedDataPairs.join("&").replace(/%20/g, "+");

          // 發送AJAX請求
          fetch("<%= request.getContextPath() %>/user_controller", {
            method: "POST",
            headers: {
              "Content-Type": "application/x-www-form-urlencoded",
            },
            body: urlEncodedData,
          })
            .then((response) => {
              if (response.ok) {
                return response.text(); // 或者 response.json() 如果回應是JSON
              }
              throw new Error("Network response was not ok.");
            })
            .then((data) => {
              document
                .getElementById("lightbox-verify")
                .classList.remove("hidden");
              console.log(data); // 處理服務器回應的數據             
            })
            .catch((error) => console.error("發生錯誤:", error));
        });

      // ===================================================================  
      // 處理按鈕"重新寄送驗證信"

      document.getElementById("resendVerificationCode").addEventListener("click", function () {
        var button = this; // 獲取當前按鈕
        button.disabled = true; // 立即禁用按鈕，防止重複點擊

        // 準備發送的數據
        var data = "requestType=resendVerificationMail";

        // 發送POST請求
        fetch("<%= request.getContextPath() %>/user_controller", {
          method: "POST",
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
          body: data
        }).catch(error => {
          console.error("Error:", error);
        });

        // 請求發送後的操作，因為後端不回應，所以直接進行操作
        alert("驗證信已重新寄送到您的信箱, 請輸入新的驗證碼!");

        // 按鈕隱藏或永久禁用，根據需求選擇一種
        // button.style.display = 'none'; // 如果想要隱藏按鈕
        // 或者保持按鈕禁用狀態，按鈕已經被設為disabled
      });





      // ===================================================================  
      // 如果要跳過註冊資料輸入直接顯示彈窗
      // document.getElementById('lightbox-verify').classList.remove('hidden');

      // ===================================================================
      // 驗證碼組合並且每次異動時會更新
      document.addEventListener("DOMContentLoaded", function () {
        const inputs = document.querySelectorAll(".verificationCodeBox input");

        function sendVerificationCode() {
          let verificationCode = Array.from(inputs).map(input => input.value).join("");

          let formData = new FormData();
          formData.append("requestType", "verificationMail");
          formData.append("verificationCode", verificationCode);

          // FormData轉URL編碼
          let urlEncodedData = new URLSearchParams(formData).toString();

          fetch("<%= request.getContextPath() %>/user_controller", {
            method: "POST",
            headers: {
              "Content-Type": "application/x-www-form-urlencoded",
            },
            body: urlEncodedData,
          })
            .then(response => response.text())
            .then(data => {
              if (data === "1") {
                alert("驗證碼錯誤");
                inputs.forEach(input => input.value = "");
              } else if (data === "0") {
                // 註冊成功，重定向到登入頁面
                window.location.href = "<%= request.getContextPath() %>/front-end/user/user_login.jsp";
              }
            })
            .catch(error => console.error("Error:", error));
        }

        inputs.forEach((input, index) => {
          input.addEventListener("input", function () {
            input.value = input.value.replace(/[^0-9]/g, "").substr(0, 1);
            if (input.value.length === 1 && index < inputs.length - 1) {
              setTimeout(() => inputs[index + 1].focus(), 0);
            }
          });

          input.addEventListener("keydown", function (e) {
            if (e.key === "Backspace" && input.value === "" && index > 0) {
              setTimeout(() => inputs[index - 1].focus(), 0);
            }
          });
        });

        document.getElementById("checkVerificationCode").addEventListener("click", function () {
          sendVerificationCode();
        });
      });

      // ===================================================================
      // 重新寄送驗證碼





    </script>


    <!-- =================================================== -->
  </body>

  </html>