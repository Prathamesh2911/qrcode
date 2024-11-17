# QR Code Generator and Scanner App

This Flutter app allows users to **generate** and **scan** QR codes using the device's camera. The app provides a simple and user-friendly interface for generating and scanning QR codes, with two core features accessible via tabs.

## Features

### 1. **Splash Screen**
The app opens with a splash screen displaying:
- A **logo image** and **text label** ("QRCODE").
- The splash screen is shown for 3 seconds before transitioning to the **Home screen**.
- The transition includes a **smooth size animation** with a **top-to-bottom page transition**.

### 2. **Home Screen with Tab Navigation**
The **Home** screen is designed with tab navigation, providing access to two main sections:
- **Tab 1: QR Code Generator**  
    - Allows users to input data (e.g., URLs, text, or names) and generate a QR code.
    - Users can interact with the generated QR code, share it, or save it.
- **Tab 2: QR Code Scanner**  
    - Uses the device's **camera** to scan QR codes.
    - After scanning, the app decodes the information and displays it to the user (e.g., URLs, text).

### 3. **QR Code Generation (First Tab)**
- Users can input text (URLs, messages, etc.) to encode into a QR code.
- The app uses the `qr_flutter` package to generate the QR code.
- Users can:
    - **Preview** the generated QR code.
    - **Download** or **share** the QR code image.

### 4. **QR Code Scanning (Second Tab)**
- Uses the device's **camera** to scan QR codes.
- The app decodes the information stored in the QR code (e.g., URLs, text).
- After scanning:
    - The app provides **real-time feedback** on the scan (successful or failed).
    - The decoded data (such as a URL) is displayed or opened in the browser.

### 5. **App Structure & Navigation**
- The app uses `MaterialApp` for setting up the main theme and routing.
- **SplashScreen**: Displayed on app startup, transitioning to the **Home screen** after 3 seconds.
- **Home screen**: Managed by `DefaultTabController`, providing tab navigation to the QR code generator and scanner features.

### 6. **Core Dependencies**
- `qr_flutter`: Used for generating QR codes from text.
- `qr_code_scanner` or `flutter_barcode_scanner`: Handles scanning QR codes using the device's camera.

### 7. **Additional Features & Considerations**
- **Camera Permissions**: The app requests and manages camera permissions for the scanning feature.
- **Error Handling**: The app provides error messages if scanning fails or if there is an issue with the generated QR code.
- **User Experience**: 
    - Intuitive interface for both generating and scanning QR codes.
    - Responsive design to adapt to various screen sizes and orientations.

### 8. **Potential Use Cases**
- **Generate QR Codes**: Users can create QR codes for websites, contact details, or any text-based data.
- **Scan QR Codes**: Users can quickly scan QR codes to open links, view contact information, or access other encoded data.

## Screenshots & Output

### 1. **Splash Screen**
The splash screen appears when the app is first opened. It shows the app’s logo and text ("QRCODE") for 3 seconds.

**Example Output:**

<img src="https://github.com/user-attachments/assets/62189383-d675-4d7a-9ae5-faf67dbb5cb1" alt="splash_screen_output" width="250" height="500" />


*The splash screen with the app logo and text label.*

### 2. **QR Code Generator Tab**
In this tab, users can enter text (e.g., a URL) to generate a QR code. Once the user enters the text, the corresponding QR code will be displayed below the input field.

**Example Output:**
- Entered text: `https://example.com`
- Generated QR Code:

<img src="https://github.com/user-attachments/assets/964e57c0-4d8e-4ffe-8096-500662314789" alt="first_output" width="250" height="500" />

*The QR code generated for the URL `https://example.com`.*

### 3. **QR Code Scanner Tab**
In the QR Code Scanner tab, users can scan QR codes using their device's camera. The app decodes the scanned QR code and displays the information.

**Example Output:**
- Scanned QR Code: `https://example.com`
- Displayed Output: The app shows the URL or opens it in the browser.


## Getting Started

### Prerequisites

Make sure you have Flutter installed on your system. If not, follow the instructions at [Flutter Installation](https://flutter.dev/docs/get-started/install).

### Installation

1. Clone the repository:

    ```bash
   https://github.com/Prathamesh2911/qrcode.git
    ```

2. Install dependencies:

    ```bash
    flutter pub get
    ```

3. Run the app on an emulator or a physical device:

    ```bash
    flutter run
    ```


Feel free to customize and expand the README further with additional sections like "Contributing" or "FAQ" if necessary.
