struct ValidateIPAddress {
    var text = "Hello, World!"
}

//func validIPAddress(_ IP: String) -> String {
//
//  var result = "Neither"
//  let dots = IP.reduce(into: 0,{ $0 += $1 == Character(".") ? 1 : 0 })
//  let colons = IP.reduce(into: 0,{ $0 += $1 == Character(":") ? 1 : 0 })
//  guard dots == 3 || colons == 7 else { return result }
//  let ipv4SubAddresses = IP.split(separator: Character("."))
//  let ipv6SubAddresses = IP.split(separator: Character(":"))
//
//  if ipv4SubAddresses.count == 4 {
//    for subAddress in ipv4SubAddresses {
//
//      guard subAddress.count > 0,
//            let number = Int(String(subAddress)),
//            number >= 0 && number < 256,
//            String(number).count == subAddress.count
//      else { return result }
//    }
//    result = "IPv4"
//  } else if ipv6SubAddresses.count == 8 {
//    for subAddress in ipv6SubAddresses {
//      guard subAddress.count > 0 && subAddress.count < 5,
//            let number = Int(subAddress, radix: 16),
//            number >= 0x0000 && number <= 0xFFFF
//      else { return result }
//    }
//    result = "IPv6"
//  }
//  return result
//}

func validIPAddress(_ IP: String) -> String {
  var result = "Neither"

  if IP.contains("."),
     3 == IP.reduce(into: 0,{ $0 += $1 == Character(".") ? 1 : 0 }) {
    let ipv4SubAddresses = IP.split(separator: Character("."))
    if ipv4SubAddresses.count == 4 {
      for subAddress in ipv4SubAddresses {
        
        guard subAddress.count > 0,
              let number = Int(String(subAddress)),
              number >= 0 && number < 256,
              String(number).count == subAddress.count
        else { return result }
      }
      result = "IPv4"
    }
  } else if IP.contains(":"),
            7 == IP.reduce(into: 0,{ $0 += $1 == Character(":") ? 1 : 0 }) {
    let ipv6SubAddresses = IP.split(separator: Character(":"))
  
    if ipv6SubAddresses.count == 8 {
      for subAddress in ipv6SubAddresses {
        guard subAddress.count > 0 && subAddress.count < 5,
              let number = Int(subAddress, radix: 16),
              number >= 0x0000 && number <= 0xFFFF
        else { return result }
      }
      result = "IPv6"
    }
  }
  return result
}
