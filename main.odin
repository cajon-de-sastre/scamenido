package main

import "core:fmt"
import "core:sys/linux"

main :: proc() {
  sock, err := linux.socket(
    linux.Address_Family.UNIX,
    linux.Socket_Type.STREAM,
    {},
    linux.Protocol.HOPOPT,
  )

  if err != .NONE {
    fmt.println("[!] socket failed:( :", err)
    return
  }

  fmt.println("[/] socket created:", sock)

  linux.close(sock)
}
