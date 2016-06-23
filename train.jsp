		<div
			style="text-align: center; font-size: 12px; height: 30px; margin: 10px;">
			</br>
			<tr>
				<td colspan="4">共${pageInfo.recordCount }条记录，共${pageInfo.pageCount }页，当前是第${pageInfo.currentPage }页
					&nbsp <a href="${pageInfo.action}?currentPage=1">首页</a> <c:if
						test="${pageInfo.currentPage!=1}">
						<a href="${pageInfo.action}?pageInfo.currentPage=${pageInfo.currentPage-1}">上一页</a>
					</c:if> <c:if test="${pageInfo.currentPage!=pageInfo.pageCount}">
						<a href="${pageInfo.action}?pageInfo.currentPage=${pageInfo.currentPage+1}">下一页</a>
					</c:if> <a href="${pageInfo.action}?pageInfo.currentPage=${pageInfo.pageCount}">末页</a>
					&nbsp<input size="2" id="goPage"> <a
						href="${pageInfo.action}?pageInfo.currentPage=${pageInfo.currentPage }"
						onclick="goPage();" id="btn-jump">
						<button>go</button> </a>
				</td>
			</tr>
		</div>



