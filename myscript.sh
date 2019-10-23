mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static

cp sample_app.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.

echo "FROM python" > tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile
echo "COPY ./* /home/ubuntu/" >> tempdir/Dockerfile
echo "RUN python /home/ubuntu/sample_app.py &" >> tempdir/Dockerfile
echo "EXPOSE 80" >> tempdir/Dockerfile

cd tempdir
sudo docker build -t sampleapp .

sudo docker stop samplerunning
sudo docker rm samplerunning
sudo docker run -t -d -P --name samplerunning sampleapp /bin/sh
sudo docker ps -a
