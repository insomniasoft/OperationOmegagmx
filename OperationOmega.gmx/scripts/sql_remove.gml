ip = argument0;


tempbuffer = createbuffer();
sockId = tcpconnect("www.insomniasoft.net", 80, 0, 0);
if(!sockId)
{
show_message("Unable to connect to server");
return 0;
}

setformat(sockId, 1, chr(13) + chr(10));

newLine = chr(13) + chr(10);
clearbuffer(tempbuffer);
writechars("GET /removematch.php?ip="+argument0+"+ HTTP/1.0" + newLine, tempbuffer);
writechars("Host: www.insomniasoft.net"+ newLine, tempbuffer);
sendmessage(sockId, "", 0, tempbuffer);
closesocket(sockId);
freebuffer(tempbuffer);
//we don't return anything
