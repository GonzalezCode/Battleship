struct huff{
        char letter;
        char code[6];
};
void setup(struct huff hcode[16]){
        char temp[10];
        fp1=fopen("huffman.txt","r");
        for(int i=0;i<16;i++){
                fgets(fp1,temp);
                hcode[i].letter=temp[0];
                strcpy(hcode[i].code,&temp[2]);
        }
        fclose(fp1);
}
