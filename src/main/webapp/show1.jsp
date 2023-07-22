<%@ page language="java" contentType="text/html; charset=utf-8"
	import="java.util.*" pageEncoding="utf-8"%>
<%@page import="domain.Mymedicine"%>
<%@page import="view.MedicineServlet"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="药物查询.css">
<meta charset="utf-8">
<title>Insert title here</title>

</head>
<style>
table {
	width: 900px;
	margin: auto;
	text-align: center;
	border: none;
	outline: none; /*取消边框和外边框将按钮边框去掉*/
	border-collapse: collapse;
}

body {
	width: 1000px;
	margin: auto;
}

.mydiv {
	margin-left: 50px;
}
</style>
<body>
	<script type="text/javascript">
		function a() {
			var t = document.getElementById("name");
			t.value = value;
		}
		function b() {
			var t = document.getElementById("disease");
			t.value = diseasename;
		}
	</script>
	<div>
		<h2 align="center">查询药物</h2>
	</div>
	<%
	String diseasename = (String) request.getAttribute("diseaseName");
	if (diseasename == null)
		diseasename = "显示治疗的疾病";
	String piece = (String) request.getAttribute("piece");
	String name = (String) request.getAttribute("name");
	for (int i = 0; i == 0; i++) {
	%>
	<form action="MedicineServlet">
		<div class="div1">
			<%
			if (name != null) {
			%>
			<input name="M_Name" id="name" type="text" placeholder="请输入药名"
				value="<%=name%>">
			<%
			} else {
			%>
			<input name="M_Name" id="name" type="text" placeholder="请输入药名">
			<%
			}
			%>
			<!--placeholder是文本框中的提示文字-->
			<input type="submit" value="查询" class="search" onclick="b"
				onclick="a">
			<div class="div2">
				<input type="text" disabled="disabled" value="<%=diseasename%>">
				<input type="text" disabled="disabled" value="<%=piece%>">
			</div>
		</div>

	</form>
	<%
	}
	%>
	<h3 align="center">部分纳入医保的罕见病目录</h3>
	<div class="mydiv">
		<table border="">
			<tr>
				<td>Tibsovo (艾伏尼布)：</td>
				<td>白血病(AML)新药</td>
				<td>208328.47人民币/瓶</td>
			</tr>
			<tr>
				<td>CARVYKTI（Cilta-cel,西达基奥仑赛）：</td>
				<td>治疗多发性骨髓瘤(MM)；</td>
				<td>约293万人民币</td>
			</tr>
			<tr>
				<td>Evrysdi（risdiplam，艾满欣）：</td>
				<td>脊髓性肌萎缩症(SMA)</td>
				<td>60mg/瓶零售价6.38万元</td>
			</tr>
			<tr>
			<tr>
				<td>Luxturna：；</td>
				<td>治疗遗传性视网膜营养不良</td>
				<td>85万美元/次</td>
			</tr>
			<tr>
				<td>Kimmtrak</td>
				<td>治疗葡萄膜黑色素瘤</td>
				<td>98万美元/年</td>
			</tr>
			<tr>
				<td>Danyelza</td>
				<td>治疗复发或难治高危神经母细胞瘤</td>
				<td>101万美元/年</td>
			</tr>
			<tr>
				<td>Zokinvy</td>
				<td>治疗早衰综合征早衰样核纤层蛋白病</td>
				<td>107万美元/每年</td>
			</tr>
			<tr>
				<td>Myalept</td>
				<td>治疗瘦素缺陷症</td>
				<td>126万美元/年</td>
			</tr>
			<tr>
				<td>Zolgensma</td>
				<td>治疗脊髓性肌萎缩症</td>
				<td>225万美元/剂</td>
			</tr>
			<tr>
				<td>Zynteglo</td>
				<td>治疗B地中海贫血</td>
				<td>280万美元/剂</td>
			</tr>
			<tr>
				<td>Skysona</td>
				<td>治疗脑肾上腺脑蛋白营养不良</td>
				<td>300万美元/剂</td>
			</tr>
			<tr>
				<td>Hemgenix</td>
				<td>治疗B型血友病</td>
				<td>350万美元/剂</td>
			</tr>
			<tr>
				<td>三甲基甘氨酸：治疗同型半胱氨酸尿症；55人民币/kg</td>
				<td>治疗复发/难治性滤泡性淋巴瘤(FL）</td>
				<td>3338822.50人民币单次治疗</td>
			</tr>
			<tr>
				<td>帕瑞肽：；</td>
				<td>治疗指端肥大症</td>
				<td>18000人民币/克</td>
			</tr>
			<tr>
				<td>阿尔法诺肽</td>
				<td>治疗红细胞生成性原卟啉症（EPP）</td>
				<td>约3000人民币/针</td>
			</tr>
			<tr>
				<td>阿利维A酸</td>
				<td>治疗艾滋病相关卡波西肉瘤</td>
				<td>2860人民币/克</td>
			</tr>
			<tr>
				<td>依洛尤单抗注射液</td>
				<td>治疗纯合子型家族性高胆固醇血症</td>
				<td>约348人民币/1ml</td>
			</tr>
			<tr>
				<td>氯苯唑酸软胶囊</td>
				<td>治疗转甲状腺素蛋白淀粉样变性心肌病</td>
				<td>24650人民币/盒</td>
			</tr>
			<tr>
				<td>人凝血银子IX</td>
				<td>治疗血友病</td>
				<td>3850人民币/500IU</td>
			</tr>
			<tr>
				<td>醋酸艾替班特注射</td>
				<td>治疗遗传性血管性水肿</td>
				<td>4330人民币/支</td>
			</tr>
			<tr>
				<td>麦格司他胶囊<br></td>
				<td>治疗C 型尼曼匹克病</td>
				<td>2365人民币/10mg</td>
			</tr>
			<tr>
				<td>利司扑兰口服溶液</td>
				<td>治疗脊髓性肌萎缩症（SMA）</td>
				<td>3780人民币/支</td>
			</tr>
			<tr>
				<td>依达拉奉氯化钠</td>
				<td>治疗肌萎缩侧索硬化症（渐冻症）</td>
				<td>133.99人民币/瓶</td>
			</tr>
			<tr>
				<td>醋酸兰瑞肽缓释注射液</td>
				<td>治疗肢端肥大</td>
				<td>5950人民币/瓶<</td>
			</tr>
			<tr>
				<td>氘代丁苯那嗪片<br></td>
				<td>治疗与亨廷顿病有关的舞蹈病及成人迟发性运动障碍</td>
				<td>6000元人民币/瓶（6mg规格）；7000元人民币/瓶（9mg规格）；9300元人民币/瓶（12mg规格）</td>
			</tr>

			<tr>
				<td>Folotyn；</td>
				<td>治疗复发或难治性周围T细胞淋巴瘤</td>
				<td>84万美元/年</td>
			</tr>
			<tr>
				<td>安立生坦片</td>
				<td>治疗有WHO II级或III级症状的肺动脉高压患者</td>
				<td>3764.50人民币/7片</td>
			</tr>
			<tr>
				<td>西尼莫德</td>
				<td>治疗10岁及以上复发型多发性硬化的芬戈莫德和治疗成人复发型多发性硬化患者</td>
				<td>8635.33人民币/盒</td>
			</tr>
			<tr>
				<td>乙磺酸尼达尼布软胶</td>
				<td>治疗特发性肺纤维化病、系统性硬化症</td>
				<td>3800人民币/30粒</td>
			</tr>
			<tr>
				<td>氨吡啶缓释片</td>
				<td>治疗脊髓性肌萎缩症</td>
				<td>年费用10万元以内</td>
			</tr>
			<tr>
				<td>诺西那生钠注射液</td>
				<td>治疗脊髓性肌萎缩症</td>
				<td>3.3万人民币/针</td>
			</tr>
			<tr>
				<td>阿加糖酶α注射用浓溶液</td>
				<td>治疗法布雷病</td>
				<td>3万余人民币/针</td>
			</tr>
			<tr>
		</table>

	</div>

</body>
</html>


