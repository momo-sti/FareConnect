document.addEventListener('DOMContentLoaded', function() {
  const mainForm = document.getElementById('main_form');
  const externalForm = document.getElementById('external_form');
  
  mainForm.addEventListener('submit', function(event) {
    event.preventDefault();

    // メインのフォームのデータを取得
    const formData = new FormData(mainForm);

    // 外部サイトへのフォームのデータを設定
    document.getElementById('startPlaceKana').value = formData.get('start_place');
    document.getElementById('arrivePlaceKana').value = formData.get('arrive_place');
    document.getElementById('searchHour').value = formData.get('hour');
    document.getElementById('searchMinute').value = formData.get('minute');
    document.getElementById('kind').value = formData.get('kind');
    document.getElementById('carType').value = formData.get('car_type');
    const date = formData.get('date').split('-');
    document.getElementById('searchYear').value = date[0];
    document.getElementById('searchMonth').value = parseInt(date[1], 10); // 月を整数に変換
    document.getElementById('searchDay').value = parseInt(date[2], 10); // 日を整数に変換

    // 外部サイトへのフォームを送信
    externalForm.submit();
  });
});