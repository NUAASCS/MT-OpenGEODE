
package asn1Scc;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream; 
import java.io.InputStreamReader;
import java.io.PrintWriter;

public class asn1Scc {
	public static void main(String[] args) {
		try {
			//读取指定文件夹下的所有文件
			String filepath = "C:\\Users\\xiaojiebaba\\Desktop\\test1";
			File file = new File(filepath);
			if (!file.isDirectory()) {
				System.out.println("---------- 该文件不是一个目录文件 ----------");
			} else if (file.isDirectory()) {
				System.out.println("---------- 很好，这是一个目录文件夹 ----------");
				String[] filelist = file.list();
				for (int i = 0; i < filelist.length; i++) {
					File readfile = new File(filepath + "\\" + filelist[i]);
					//String path = readfile.getPath();//文件路径
					String absolutepath = readfile.getAbsolutePath();
					String filename = readfile.getName();
					BufferedReader bufReader = new BufferedReader(new InputStreamReader(new FileInputStream(absolutepath)));//数据流读取文件
					StringBuffer strBuffer = new StringBuffer();
					String empty = "";
					String tihuan = "";
					for (String temp = null; (temp = bufReader.readLine()) != null; temp = null) {
					
						temp=temp.replace("asn1Scc", "");
					
						strBuffer.append(temp);
						strBuffer.append(System.getProperty("line.separator"));
						
					}
					bufReader.close();
					PrintWriter printWriter = new PrintWriter("C:\\Users\\xiaojiebaba\\Desktop\\test\\"+filename);//替换后输出的文件位置（切记这里的E:/ttt 在你的本地必须有这个文件夹）
					printWriter.write(strBuffer.toString().toCharArray());
					printWriter.flush();
					printWriter.close();
					System.out.println("ok 第 " + (i+1) +" 个文件操作成功！");
					
				}
				System.out.println("---------- 所有文件操作完毕 ----------");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
