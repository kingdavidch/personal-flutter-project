# StreamFlix - Flutter Movie App
A modern Flutter application that allows users to discover trending and popular movies using The Movie Database (TMDB) API.
## Features
- Browse trending movies with an interactive slider
- Explore popular movies
- Search for specific movies
- View detailed movie information
- Cached image loading for smooth performance
- Pull-to-refresh functionality
- Error handling and offline support

## Setup Instructions
### Prerequisites
- Flutter SDK
- Dart SDK 
- TMDB API Key
- 
### Getting Started
1. Clone the repository
git clone https://github.com/yourusername/streamflix.git
2. Navigate to project directory
cd streamflix
3. Install dependencies
flutter pub get
4. Add your TMDB API key in `lib/services/api_services.dart`
static const String apiKey = 'YOUR_API_KEY_HERE';
5. Run the app
flutter run

## Project Structure
lib/
├── models/
│   └── movie.dart
├── screens/
│   ├── home_screen.dart
│   ├── search_screen.dart
│   └── details_screen.dart
├── services/
│   └── api_services.dart
└── main.dart

## Dependencies
- dio: ^5.0.0
- cached_network_image: ^3.2.0
- [Add other dependencies]
  
## API Reference
This app uses The Movie Database (TMDB) API. The following endpoints are used:
- Trending Movies: `/trending/movie/week`
- Popular Movies: `/movie/popular`
- Search Movies: `/search/movie`
- Movie Details: `/movie/{movie_id}`
- Movie Cast: `/movie/{movie_id}/credits`
  
## Contributing
Contributions are welcome! Please feel free to submit a Pull Request.

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments
- TMDB for providing the movie data API
- Flutter team for the amazing framework

---
⭐️ Star this repo if you like what you see
