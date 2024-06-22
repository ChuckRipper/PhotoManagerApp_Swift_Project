# PhotoManagerApp_Swift_Project
Swift App

# Specyfikacja projektu

## Krótki opis projektu

Aplikacja do zarządzania i udostępniania zdjęć umożliwia użytkownikom przesyłanie, przechowywanie, zarządzanie oraz udostępnianie zdjęć. Użytkownicy mogą tworzyć albumy, dodawać opisy do zdjęć, przeglądać zdjęcia innych użytkowników i komentować je. Aplikacja wspiera także opcje rejestracji i logowania użytkowników oraz zarządzanie profilami.

## Wymagania funkcjonalne

- Użytkownik może się zarejestrować i zalogować do aplikacji.
- Użytkownik może przesyłać zdjęcia i dodawać je do albumów.
- Użytkownik może zarządzać swoimi albumami (tworzenie, edytowanie, usuwanie).
- Użytkownik może przeglądać zdjęcia innych użytkowników i dodawać komentarze.
- Użytkownik może udostępniać linki do swoich albumów lub poszczególnych zdjęć.

## Wymagania pozafunkcjonalne

- Aplikacja musi być responsywna i działać płynnie na różnych urządzeniach.
- Aplikacja powinna zapewniać bezpieczeństwo danych użytkowników (szyfrowanie haseł, bezpieczne połączenia).

## Potencjalni odbiorcy systemu

- Fotografowie amatorzy, którzy chcą zarządzać i udostępniać swoje prace.
- Rodziny i przyjaciele, którzy chcą dzielić się wspomnieniami w formie zdjęć.

## Potencjalne korzyści dla użytkowników końcowych

- Łatwe zarządzanie i udostępnianie zdjęć w jednym miejscu.
- Możliwość interakcji z innymi użytkownikami poprzez komentarze i udostępnienia.

# Technologia i narzędzia

## Środowisko programistyczne

- **Xcode**: Główne środowisko dla rozwoju aplikacji w Swift na macOS.
- **Visual Studio Code**: Może być używany do edytowania kodu Swift na Windowsie. Konieczne będzie zainstalowanie rozszerzeń dla Swift.
- **Visual Studio 2022**: Alternatywa, ale wymaga konfiguracji narzędzi do kompilacji Swift.

## Baza danych

- Postgres

# Struktura projektu

## Frontend (klient)
- Widoki (SwiftUI lub UIKit)
- Kontrolery/Widoki-MVVM
- Routing między ekranami

## Backend (serwer)
- API (np. przy użyciu Vapor framework dla Swift)
- Logika biznesowa
- Obsługa bazy danych (ORM, np. Fluent)

## Testy
- Testy jednostkowe (XCTest)
- Testy interfejsu użytkownika (XCTestUI)











