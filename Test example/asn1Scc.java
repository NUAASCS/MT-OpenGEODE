
package asn1Scc;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream; 
import java.io.InputStreamReader;
import java.io.PrintWriter;

public class asn1Scc {
	public static void main(String[] args) {
		try {
			//��ȡָ���ļ����µ������ļ�
			String filepath = "C:\\Users\\xiaojiebaba\\Desktop\\test1";
			File file = new File(filepath);
			if (!file.isDirectory()) {
				System.out.println("---------- ���ļ�����һ��Ŀ¼�ļ� ----------");
			} else if (file.isDirectory()) {
				System.out.println("---------- �ܺã�����һ��Ŀ¼�ļ��� ----------");
				String[] filelist = file.list();
				for (int i = 0; i < filelist.length; i++) {
					File readfile = new File(filepath + "\\" + filelist[i]);
					//String path = readfile.getPath();//�ļ�·��
					String absolutepath = readfile.getAbsolutePath();
					String filename = readfile.getName();
					BufferedReader bufReader = new BufferedReader(new InputStreamReader(new FileInputStream(absolutepath)));//��������ȡ�ļ�
					StringBuffer strBuffer = new StringBuffer();
					String empty = "";
					String tihuan = "";
					for (String temp = null; (temp = bufReader.readLine()) != null; temp = null) {
					
						temp=temp.replace("asn1Scc", "");
					
						strBuffer.append(temp);
						strBuffer.append(System.getProperty("line.separator"));
						
					}
					bufReader.close();
					PrintWriter printWriter = new PrintWriter("C:\\Users\\xiaojiebaba\\Desktop\\test\\"+filename);//�滻��������ļ�λ�ã��м������E:/ttt ����ı��ر���������ļ��У�
					printWriter.write(strBuffer.toString().toCharArray());
					printWriter.flush();
					printWriter.close();
					System.out.println("ok �� " + (i+1) +" ���ļ������ɹ���");
					
				}
				System.out.println("---------- �����ļ�������� ----------");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
