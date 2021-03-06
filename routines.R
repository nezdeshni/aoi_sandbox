#library(microbenchmark)
library(Rcpp)
sourceCpp("D:\\RGNF_Repo\\AOI_sandbox\\CPP\\SPC.cpp")

#����������� ���������, ������ ���������� ��� ����������� ���� �������� ����������
ExpDispDataList=list(Rect=list("LTX","LTY","Height","Width"),
                     Circle=list("CX","CY","Radius"),
                     Ellipse=list("CX","CY","MinAxis","MajAxis","Angle"),
                     Polyhedron=list("Vertexes")
)

#��������� �������� �� ������ ������� ������
is.vertexes<-function(nList){
  if((is.list(nList))&
     (all(as.logical(lapply(nList,is.numeric_l))))&
     (all(as.logical(sapply(lapply(nList,as.numeric),GETZ))))&
     (length(nList)>=3)
     #���� ���������� �������� ������� �������, 
     #��� �������� � ���� ������ �����
     #��� ��� ����� ������ ���� ����� ����
     #� ������ ������ 2
  ){return(TRUE)
    #�� ������� ������ ������
  } else {return(FALSE)}
    #� ��������� ������ �� ������������ ������ ���������� ��������� ������������
}

#��������� ��� �� ���������� ������ ����� �������� ��������
is.numeric_l<-function(nList){
  if(is.list(nList)){
    return(all(as.logical(lapply(nList,is.numeric))))
  } else return(FALSE)
}