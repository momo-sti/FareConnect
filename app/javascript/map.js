
function initMap(){
  geocoder = new google.maps.Geocoder()

  map = new google.maps.Map(document.getElementById('map'), {
    //latが緯度、lngが経度を示します
    center: {lat: 40.7828, lng:-73.9653},
    //数値は0〜21まで指定できます。数値が大きいほど拡大されます
    zoom: 12,
  });
  //positionに指定した座標にピンを表示させます
  marker = new google.maps.Marker({
    position:  {lat: 40.7828, lng:-73.9653},
    map: map
  });
}
