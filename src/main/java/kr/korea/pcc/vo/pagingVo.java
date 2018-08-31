package kr.korea.pcc.vo;

import java.util.List;

public class pagingVo<T> {
		// 넘겨받을 데이터
		private int totalCount; // 전체개수
		private int currentPage; // 현재페이지
		private int pageSize; // 페이지당 글수
		private int blockSize; // 블록당 표시할 페이지수

		// 받아서 계산할 데이터
		private int totalPage; // 전체 페이지 수
		private int startNo; // 시작 글번호
		private int endNo; // 끝 글번호
		private int startPage; // 시작 페이지번호
		private int endPage; // 끝 페이지번호

		// 생성자 만들기
		public pagingVo(int totalCount, int currentPage, int pageSize, int blockSize) {
			super();
			this.totalCount = totalCount;
			this.currentPage = currentPage;
			this.pageSize = pageSize;
			this.blockSize = blockSize;
			calc();
		}

		// 나머지 값은 계산해주자!!!
		private void calc() {
			// 글이 있을때만 계산
			if (totalCount > 0) {
				/*
				 * totalPage = totalCount / pageSize; if(totalCount%pageSize!=0) totalPage++;
				 */
				// 전체페이지수 = (전체 개수-1)/페이지당글 수
				totalPage = (totalCount - 1) / pageSize + 1;
				// 시작번호 = (현재페이지-1)*페이지 사이즈 + 1 // 마리아는 index가 0부터 시작되므로 +1을 하지 않는다.
				startNo = (currentPage - 1) * pageSize;
				endNo = startNo + pageSize;
				// 유효성검사 : 마지막번호가 전체 개수보다 클 수 없다.
				if (endNo > totalCount)	endNo = totalCount;
				// 시작페이지 = (현재페이지-1)/블록당페이지수 * 블록당페이지수 + 1
				startPage = (currentPage - 1) / blockSize * blockSize + 1;
				endPage = startPage + blockSize - 1;
				if (endPage > totalPage) endPage = totalPage;
			}
		}

		private List<T> list; // 1페이지 분량의 글이 담길 리스트

		public List<T> getList() {
			return list;
		}

		public void setList(List<T> list) {
			this.list = list;
		}

		public int getTotalCount() {
			return totalCount;
		}

		public int getCurrentPage() {
			return currentPage;
		}

		public int getPageSize() {
			return pageSize;
		}

		public int getBlockSize() {
			return blockSize;
		}

		public int getTotalPage() {
			return totalPage;
		}

		public int getStartNo() {
			return startNo;
		}

		public int getEndNo() {
			return endNo;
		}

		public int getStartPage() {
			return startPage;
		}

		public int getEndPage() {
			return endPage;
		}

		// 페이지 정보를 출력해주는 메서드
		public String getPageInfo() {
			String info = "전체 : " + totalCount + "개";
			if (totalCount > 0) {
				info += "(" + currentPage + "/" + totalPage + "Page)";
			}
			return info;
		}
		// 페이지번호 리스트를 출력해 주는 메서드
		public String getPageList() {
			String str = "";
			if(startPage>1) { // 시작페이지번호가 1보다 크다면 이전 페이지가 존재
				str += "[<a href='?p="+(startPage-1)+"&s="+pageSize+"&b="+blockSize+"'>이전</a>] ";
			}
			// 페이지 리스트
			if(totalCount>0) {
				for(int i=startPage;i<=endPage;i++) {
					if(i==currentPage) {
						str += "[" + i + "] ";
					}else {
						str += " [<a href='?p="+(i)+"&s="+pageSize+"&b="+blockSize+"'>" + i + "</a>] ";
					}
				}
			}
			if(endPage<totalPage) { // 마지막페이지번호가 전체페이지수보다 적다면 다음 페이지가 존재
				str += "[<a href='?p="+(endPage+1)+"&s="+pageSize+"&b="+blockSize+"'>다음</a>]";
			}
			return str;
		}
		@Override
		public String toString() {
			return "Paging [totalCount=" + totalCount + ", currentPage=" + currentPage + ", pageSize=" + pageSize
					+ ", blockSize=" + blockSize + ", totalPage=" + totalPage + ", startNo=" + startNo + ", endNo=" + endNo
					+ ", startPage=" + startPage + ", endPage=" + endPage + ", list=" + list + "]";
		}
	
}
