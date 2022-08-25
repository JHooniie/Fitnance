// Call the dataTables jQuery plugin
$(document).ready(function() {
  // 데이터테이블 js 사용
  $('#dataTable').DataTable({
    "ordering": false,        // 열은 인덱스 반대 순으로 정렬(최신순)
    "lengthChange": false    // 테이블 행 10개 보여주는 것으로 고정
    //"searching": false        // 검색 기능 제외
  });

});
