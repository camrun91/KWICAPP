package ejb;

import java.util.ArrayList;


public class OutputWriter {
    
    CoreData core;
    ArrayList<String> outputList;
    String output;
    
    public OutputWriter( CoreData core) {
        this.core =core;
        this.outputList = core.getCircularShifts();
        this.output = " ";
    }
    
    public String outputToText() {
        outputList.forEach((line) -> {
            String fw;
            String[] noise = new String[]{"a","an","the","and","or","of","to","be","is","in","out","by","as","at","off","null"};
            boolean check = true;
            if(line.contains(" ")){
                fw = line.substring(0, line.indexOf(" "));
                fw = fw.toLowerCase();
            }else{
                fw = line;
            }
            for(String s : noise){
                if(fw.equals(s)) check = false;
            }
            if(check){
                this.output= this.output+(line);
                this.output= this.output+("\n");
            }
            //this.output.appendText(line);
            //this.output.appendText("\n");
        });
        return this.output;
    }
   

}
