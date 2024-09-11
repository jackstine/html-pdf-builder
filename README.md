# wkhtmltopdf Docker Image
This repo will build the [wkhtmltopdf](https://wkhtmltopdf.org/) program in a docker image.
You can build this image using the following docker command.
```bash
git build https://github.com/jackstine/html-pdf-builder.git#main
```

Use the following command to run the `pdfbuilder` image, and a mounted point to export the generated files. Here is an example.

```bash
docker run -v ./:/output pdfbuilder google.com /output/kk.pdf`
```

# Ubuntu Versioning
The Version of Ubuntu is set so that `wkhtmltopdf` will work.  There is a dependency in `wkhtmltopdf` that requires `libssl1.1` which is no longer in current versions of ubtuntu.

