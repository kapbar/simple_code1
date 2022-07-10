abstract class AppAssets {
  static const images = _Images();
  static const svg = _Svg();
}

class _Images {
  const _Images();
  final String logo = 'assets/images/bitmap/logo.png';
  final String background = 'assets/images/bitmap/background.png';
  final String morty = 'assets/images/bitmap/morty.png';
  final String rick = 'assets/images/bitmap/rick.png';
  final String noAvatar = 'assets/images/bitmap/no_avatar.png';
  final String resultSearch = 'assets/images/bitmap/result_search.png';
}

class _Svg {
  const _Svg();
  final String account = 'assets/images/svg/account.svg';
  final String password = 'assets/images/svg/password.svg';
  final String persons = 'assets/images/svg/persons.svg';
}
