import 'dart:io';
import 'package:image/image.dart';
void main() {
  // Read an image from file (webp in this case).
  // decodeImage will identify the format of the image and use the appropriate
  // decoder.
  Image image = decodeImage(new File('./example/test.webp').readAsBytesSync());

  // Resize the image to a 120x? thumbnail (maintaining the aspect ratio).
  // Image thumbnail = copyResize(image, 120);
      
  // Draw some text using 24pt arial font
  drawString(image, arial_24, 10, 10, 'Hello World', color: 0xffcceedd);

  // Save the thumbnail as a PNG.
  new File('thumbnail.png').writeAsBytesSync(encodePng(image));
}
