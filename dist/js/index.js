$(function () { $("input").each(function () { var i = this.value; $(this).focus(function () { this.value == i && (this.value = "") }), $(this).blur(function () { "" == this.value && (this.value = i) }) }), $(".liis").mousemove(function () { $(this).find(".none").slideDown() }), $(".liis").mouseleave(function () { $(this).find(".none").stop(1, 1).slideUp() }), url = "../api/liebiao.php", data = "APItype=goodli"; var l = getid("ulss"); ajax("POST", url, data, function (i) { var n = JSON.parse(i); console.log(n); var t = n.list.map(function (i) { return '\n              <li>\n            <img src="' + i.img + '" alt="">\n             </li>' }).join(""); l.innerHTML = t }), $(".liis li").click(function () { location.href = "list.html" }); var i = setTimeout(function () { $("#only").css("display", "none"), clearTimeout(i) }, 6e3); $(".onlylike span").click(function () { $("#only").css("display", "none"), clearTimeout(i) }) });