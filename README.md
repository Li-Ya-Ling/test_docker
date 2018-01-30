# test_docker

#### An example of docker image
create an image which contains r-base，ncbi-blast-2.2.26+ and a custom Rscript
test file: ~/pheatmap/input/Test.input.xls

```bash
docker build -t docker账号/test_docker .  
docker run -it docker账号/test_docker bash
mkdir -p ~/pheatmap/output
cd ~/pheatmap/output
pheatmap.r --infile ~/pheatmap/input/Test.input.xls --outfile ./
exit
```
push image (optional)
```
docker push docker账号/test_docker
```
