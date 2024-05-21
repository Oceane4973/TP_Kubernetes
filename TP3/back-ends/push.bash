NOM=back-end
VERSION=0.0.1
REGISTRY="10.54.56.39:5000"

TAG=$REGISTRY/$NOM:$VERSION

INFO="$VERSION build `date`"
echo $INFO

docker build --rm -t $TAG --build-arg VERSION="$INFO" .
docker push $TAG

# docker image rm $(docker image ls -f 'dangling=true' -q)

# echo "mise à jour sur k8s"
# PODS=$(kubectl -n developpement get pods)
# kubectl -n developpement delete pods $PODS